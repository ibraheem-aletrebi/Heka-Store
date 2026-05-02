import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/order/data/models/order_details_model.dart';
import 'package:heka_store/Features/order/data/models/review_request_model.dart';
import 'package:heka_store/Features/order/presentation/blocs/add_review/add_review_cubit.dart';
import 'package:heka_store/Features/order/presentation/blocs/order_details/order_details_bloc.dart';
import 'package:heka_store/core/di/injector.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/extensions/validation_key_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';
import 'package:heka_store/core/utils/field_validator.dart';
import 'package:heka_store/core/widgets/custom_button/custom_button.dart';
import 'package:heka_store/core/widgets/custom_cached_network_image.dart';
import 'package:heka_store/core/widgets/custom_text_form_field.dart';
import 'package:heka_store/generated/l10n.dart';

// ── Body ──────────────────────────────────────────────────────────────────────

class OrderDetailsBody extends StatelessWidget {
  const OrderDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(s.orderDetailsTitle)),
      body: BlocBuilder<OrderDetailsBloc, OrderDetailsState>(
        builder: (context, state) {
          if (state.isLoading) return const _LoadingSkeleton();

          if (state.error != null || state.order == null) {
            return _ErrorState(
              message: state.error?.serverMessage ?? s.myOrdersGenericError,
              onRetry: () => context.read<OrderDetailsBloc>().add(
                OrderDetailsEvent.loaded(orderId: state.order?.id ?? 0),
              ),
            );
          }

          final order = state.order!;
          final isArabic = Localizations.localeOf(context).languageCode == 'ar';
          final isDelivered =
              order.statusId == 5 || order.status == 'Delivered';

          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: AppSizes.w16,
              vertical: AppSizes.h16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _SectionCard(
                  title: s.orderDetailsProducts,
                  child: Column(
                    children: order.items
                        .map(
                          (item) => _ProductRow(
                            item: item,
                            isCompleted: isDelivered,
                            isArabic: isArabic,
                          ),
                        )
                        .toList(),
                  ),
                ),
                SizedBox(height: AppSizes.h12),
                _SectionCard(
                  title: s.orderDetailsPriceSummary,
                  child: _PriceSummary(order: order),
                ),
                SizedBox(height: AppSizes.h12),
                _SectionCard(
                  title: s.orderDetailsShipping,
                  child: _ShippingInfo(order: order),
                ),
                SizedBox(height: AppSizes.h12),
                _SectionCard(
                  title: s.orderDetailsPayment,
                  child: _PaymentInfo(order: order),
                ),
                SizedBox(height: AppSizes.h32),
              ],
            ),
          );
        },
      ),
    );
  }
}

// ── Section card ──────────────────────────────────────────────────────────────

class _SectionCard extends StatelessWidget {
  final String title;
  final Widget child;
  const _SectionCard({required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(AppSizes.r16),
        border: Border.all(color: theme.colorScheme.outline),
      ),
      padding: EdgeInsets.all(AppSizes.w14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: theme.textTheme.labelLarge),
          SizedBox(height: AppSizes.h12),
          Divider(
            color: theme.dividerColor,
            height: 1,
            thickness: theme.dividerTheme.thickness,
          ),
          SizedBox(height: AppSizes.h12),
          child,
        ],
      ),
    );
  }
}

// ── Product row ───────────────────────────────────────────────────────────────

class _ProductRow extends StatelessWidget {
  final OrderItemModel item;
  final bool isCompleted;
  final bool isArabic;

  const _ProductRow({
    required this.item,
    required this.isCompleted,
    required this.isArabic,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = context.myColors;
    final productName = isArabic ? item.productNameAr : item.productNameEn;

    return Padding(
      padding: EdgeInsets.only(bottom: AppSizes.h10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(AppSizes.r8),
                child: SizedBox(
                  width: AppSizes.w64,
                  height: AppSizes.w64,
                  child: CachedImage(
                    url: item.productImage,
                    fallback: ColoredBox(color: colors.primarySoft),
                  ),
                ),
              ),
              SizedBox(width: AppSizes.w10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productName,
                      style: theme.textTheme.titleSmall,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (item.variantValue != null &&
                        item.variantValue!.isNotEmpty) ...[
                      SizedBox(height: AppSizes.h4),
                      Row(
                        children: [
                          if (item.variantColorHex != null &&
                              item.variantColorHex!.isNotEmpty)
                            Container(
                              width: AppSizes.w10,
                              height: AppSizes.w10,
                              margin: EdgeInsets.only(right: AppSizes.w4),
                              decoration: BoxDecoration(
                                color: _hexColor(item.variantColorHex!),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: theme.colorScheme.outline,
                                  width: 0.5,
                                ),
                              ),
                            ),
                          Flexible(
                            child: Text(
                              '${item.variantTypeName}: ${item.variantValue}',
                              style: theme.textTheme.bodySmall,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                    SizedBox(height: AppSizes.h6),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: AppSizes.w6,
                            vertical: AppSizes.h2,
                          ),
                          decoration: BoxDecoration(
                            color: colors.primarySoft,
                            borderRadius: BorderRadius.circular(AppSizes.r4),
                          ),
                          child: Text(
                            'x${item.quantity}',
                            style: theme.textTheme.labelSmall?.copyWith(
                              color: colors.primary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          'EGP ${item.totalPrice.toStringAsFixed(2)}',
                          style: theme.textTheme.titleSmall?.copyWith(
                            color: theme.colorScheme.onSurface,
                          ),
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          // ── Review button — wrapped in its own BlocProvider ────────────
          if (isCompleted) ...[
            SizedBox(height: AppSizes.h10),
            BlocProvider(
              create: (_) => sl<AddReviewCubit>(),
              child: _ReviewButtonStateful(
                productId: item.productId,
                productName: productName,
                productImage: item.productImage,
              ),
            ),
          ],

          SizedBox(height: AppSizes.h6),
          Divider(color: theme.dividerColor.withValues(alpha: 0.5), height: 1),
        ],
      ),
    );
  }

  Color _hexColor(String hex) {
    try {
      final clean = hex.replaceAll('#', '');
      return Color(int.parse('FF$clean', radix: 16));
    } catch (_) {
      return Colors.grey;
    }
  }
}

// ── Review button (stateful — tracks submitted state) ─────────────────────────

class _ReviewButtonStateful extends StatefulWidget {
  final int productId;
  final String productName;
  final String productImage;

  const _ReviewButtonStateful({
    required this.productId,
    required this.productName,
    required this.productImage,
  });

  @override
  State<_ReviewButtonStateful> createState() => _ReviewButtonStatefulState();
}

class _ReviewButtonStatefulState extends State<_ReviewButtonStateful> {
  bool _reviewed = false;

  void _onSuccess() {
    if (mounted) setState(() => _reviewed = true);
    _showResultSnackbar(
      context: context,
      message: S.of(context).myOrdersReviewSuccess,
      isSuccess: true,
    );
  }

  void _onError(String message) {
    _showResultSnackbar(context: context, message: message, isSuccess: false);
  }

  void _showResultSnackbar({
    required BuildContext context,
    required String message,
    required bool isSuccess,
  }) {
    final colors = context.myColors;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(
              isSuccess
                  ? Icons.check_circle_rounded
                  : Icons.error_outline_rounded,
              color: colors.textOnPrimary,
              size: AppSizes.sp20,
            ),
            SizedBox(width: AppSizes.w8),
            Expanded(
              child: Text(
                message,
                style: AppTextStyles.semiBold13.copyWith(
                  color: colors.textOnPrimary,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: isSuccess ? colors.success : colors.error,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.r12),
        ),
        margin: EdgeInsets.all(AppSizes.w16),
        duration: const Duration(seconds: 3),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;
    final theme = Theme.of(context);

    // ── Already reviewed ───────────────────────────────────────────────
    if (_reviewed) {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          vertical: AppSizes.h10,
          horizontal: AppSizes.w12,
        ),
        decoration: BoxDecoration(
          color: colors.success.withValues(alpha: 0.08),
          borderRadius: BorderRadius.circular(AppSizes.r10),
          border: Border.all(color: colors.success.withValues(alpha: 0.25)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle_rounded,
              size: AppSizes.sp16,
              color: colors.success,
            ),
            SizedBox(width: AppSizes.w6),
            Text(
              s.myOrdersReviewSubmitted,
              style: theme.textTheme.labelMedium?.copyWith(
                color: colors.success,
              ),
            ),
          ],
        ),
      );
    }

    // ── Leave review button ────────────────────────────────────────────
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton.icon(
        onPressed: () => _showReviewSheet(context),
        icon: Icon(Icons.star_outline_rounded, size: AppSizes.sp16),
        label: Text(s.myOrdersLeaveReview),
        style: OutlinedButton.styleFrom(
          foregroundColor: colors.primary,
          side: BorderSide(color: colors.primary.withValues(alpha: 0.5)),
          backgroundColor: colors.primary.withValues(alpha: 0.04),
          padding: EdgeInsets.symmetric(
            vertical: AppSizes.h10,
            horizontal: AppSizes.w12,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.r10),
          ),
          textStyle: AppTextStyles.semiBold13,
        ),
      ),
    );
  }

  void _showReviewSheet(BuildContext context) {
    // Reuse the same cubit already provided by _ProductRow's BlocProvider
    final cubit = context.read<AddReviewCubit>();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      useSafeArea: true,
      builder: (sheetCtx) => BlocProvider.value(
        value: cubit,
        child: _ReviewBottomSheet(
          productId: widget.productId,
          productName: widget.productName,
          productImage: widget.productImage,
          onSuccess: () {
            Navigator.of(sheetCtx).pop();
            _onSuccess();
          },
          onError: (msg) {
            Navigator.of(sheetCtx).pop();
            _onError(msg);
          },
        ),
      ),
    );
  }
}

// ── Review bottom sheet ───────────────────────────────────────────────────────

class _ReviewBottomSheet extends StatefulWidget {
  final int productId;
  final String productName;
  final String productImage;
  final VoidCallback onSuccess;
  final void Function(String message) onError;

  const _ReviewBottomSheet({
    required this.productId,
    required this.productName,
    required this.productImage,
    required this.onSuccess,
    required this.onError,
  });

  @override
  State<_ReviewBottomSheet> createState() => _ReviewBottomSheetState();
}

class _ReviewBottomSheetState extends State<_ReviewBottomSheet> {
  int _rating = 0;
  final _commentCtrl = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _submitted = false;

  @override
  void dispose() {
    _commentCtrl.dispose();
    super.dispose();
  }

  void _submit(BuildContext context) {
    setState(() => _submitted = true);
    if (_rating == 0) return;
    final isFormValid = _formKey.currentState?.validate() ?? false;
    if (isFormValid) {
      context.read<AddReviewCubit>().submitReview(
        review: ReviewRequestModel(
          productId: widget.productId,
          rating: _rating,
          comment: _commentCtrl.text.trim(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;
    final theme = Theme.of(context);
    final bottomPadding = MediaQuery.viewInsetsOf(context).bottom;

    return BlocListener<AddReviewCubit, AddReviewState>(
      listener: (context, state) {
        if (state.isSuccess) widget.onSuccess();
        if (state.isFailure) {
          widget.onError(state.errorMessage ?? s.myOrdersGenericError);
        }
      },
      child: Form(
        key: _formKey,
        autovalidateMode: _submitted
            ? AutovalidateMode.onUserInteraction
            : AutovalidateMode.disabled,
        child: Container(
          decoration: BoxDecoration(
            color: colors.surface,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
          ),
          // ── Keyboard-safe scroll ───────────────────────────────────────
          child: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(
              AppSizes.w20,
              AppSizes.h16,
              AppSizes.w20,
              AppSizes.h24 + bottomPadding,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Handle
                Center(
                  child: Container(
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      color: colors.border,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
                SizedBox(height: AppSizes.h20),

                // ── Product preview ──────────────────────────────────────
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(AppSizes.r10),
                      child: SizedBox(
                        width: AppSizes.w50,
                        height: AppSizes.w50,
                        child: CachedImage(
                          url: widget.productImage,
                          fallback: ColoredBox(color: colors.primarySoft),
                        ),
                      ),
                    ),
                    SizedBox(width: AppSizes.w12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            s.myOrdersReviewTitle,
                            style: AppTextStyles.bold18.copyWith(
                              color: colors.textPrimary,
                            ),
                          ),
                          SizedBox(height: AppSizes.h2),
                          Text(
                            widget.productName,
                            style: AppTextStyles.regular13.copyWith(
                              color: colors.textHint,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppSizes.h24),

                // ── Star rating ──────────────────────────────────────────
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: AppSizes.h20),
                  decoration: BoxDecoration(
                    color: colors.primary.withValues(alpha: 0.04),
                    borderRadius: BorderRadius.circular(AppSizes.r16),
                    border: Border.all(
                      color: (_submitted && _rating == 0)
                          ? theme.colorScheme.error
                          : colors.primary.withValues(alpha: 0.1),
                      width: (_submitted && _rating == 0) ? 1.5 : 1,
                    ),
                  ),
                  child: Column(
                    children: [
                      // Stars
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(5, (i) {
                          final filled = i < _rating;
                          return _StarButton(
                            filled: filled,
                            onTap: () {
                              HapticFeedback.lightImpact();
                              setState(() => _rating = i + 1);
                            },
                          );
                        }),
                      ),
                      SizedBox(height: AppSizes.h10),

                      // Rating label
                      AnimatedSwitcher(
                        duration: const Duration(milliseconds: 200),
                        transitionBuilder: (child, anim) => FadeTransition(
                          opacity: anim,
                          child: SlideTransition(
                            position: Tween<Offset>(
                              begin: const Offset(0, 0.3),
                              end: Offset.zero,
                            ).animate(anim),
                            child: child,
                          ),
                        ),
                        child: Text(
                          _ratingLabel(s),
                          key: ValueKey(_rating),
                          style: AppTextStyles.semiBold13.copyWith(
                            color: _rating > 0
                                ? Colors.amber.shade700
                                : colors.textHint,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Rating error hint
                AnimatedSize(
                  duration: const Duration(milliseconds: 200),
                  child: (_submitted && _rating == 0)
                      ? Padding(
                          padding: EdgeInsets.only(top: AppSizes.h6),
                          child: Row(
                            children: [
                              Icon(
                                Icons.info_outline_rounded,
                                size: 13,
                                color: theme.colorScheme.error,
                              ),
                              SizedBox(width: AppSizes.w4),
                              Text(
                                s.myOrdersRatingRequired,
                                style: AppTextStyles.regular11.copyWith(
                                  color: theme.colorScheme.error,
                                ),
                              ),
                            ],
                          ),
                        )
                      : const SizedBox.shrink(),
                ),
                SizedBox(height: AppSizes.h16),

                // ── Comment field ────────────────────────────────────────
                CustomTextFormField(
                  controller: _commentCtrl,
                  maxLines: 4,
                  maxLength: 500,
                  hint: s.myOrdersReviewHint,
                  validator: (value) {
                    if (value != null && value.trim().length < 10) {
                      return s.myOrdersReviewTooShort;
                    }
                    return FieldValidator.required(
                      value ?? '',
                    )?.translate(context);
                  },
                ),
                SizedBox(height: AppSizes.h20),

                // ── Submit button ────────────────────────────────────────
                BlocBuilder<AddReviewCubit, AddReviewState>(
                  builder: (context, state) => CustomButton(
                    isLoading: state.isLoading,
                    text: s.myOrdersReviewSubmit,
                    onPressed: state.isLoading ? null : () => _submit(context),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _ratingLabel(S s) {
    switch (_rating) {
      case 1:
        return s.myOrdersRating1;
      case 2:
        return s.myOrdersRating2;
      case 3:
        return s.myOrdersRating3;
      case 4:
        return s.myOrdersRating4;
      case 5:
        return s.myOrdersRating5;
      default:
        return s.myOrdersRatingNone;
    }
  }
}

// ── Star button with scale animation ─────────────────────────────────────────

class _StarButton extends StatefulWidget {
  final bool filled;
  final VoidCallback onTap;

  const _StarButton({required this.filled, required this.onTap});

  @override
  State<_StarButton> createState() => _StarButtonState();
}

class _StarButtonState extends State<_StarButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl;
  late final Animation<double> _scale;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 120),
      lowerBound: 0.75,
      upperBound: 1.0,
      value: 1.0,
    );
    _scale = _ctrl;
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  Future<void> _onTap() async {
    await _ctrl.reverse();
    await _ctrl.forward();
    widget.onTap();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;

    return GestureDetector(
      onTap: _onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.w4),
        child: ScaleTransition(
          scale: _scale,
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 180),
            switchInCurve: Curves.easeOut,
            transitionBuilder: (child, anim) => ScaleTransition(
              scale: anim,
              child: FadeTransition(opacity: anim, child: child),
            ),
            child: Icon(
              widget.filled ? Icons.star_rounded : Icons.star_outline_rounded,
              key: ValueKey(widget.filled),
              size: 40,
              color: widget.filled
                  ? Colors.amber.shade400
                  : colors.textHint.withValues(alpha: 0.35),
            ),
          ),
        ),
      ),
    );
  }
}

// ── Price summary ─────────────────────────────────────────────────────────────

class _PriceSummary extends StatelessWidget {
  final OrderDetailsModel order;
  const _PriceSummary({required this.order});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final theme = Theme.of(context);

    return Column(
      children: [
        _PriceRow(
          label: s.orderDetailsSubtotal,
          value: 'EGP ${order.subTotal.toStringAsFixed(2)}',
        ),
        SizedBox(height: AppSizes.h8),
        _PriceRow(
          label: s.orderDetailsShippingCost,
          value: 'EGP ${order.shippingCost.toStringAsFixed(2)}',
        ),
        SizedBox(height: AppSizes.h10),
        Divider(
          color: theme.dividerColor,
          height: 1,
          thickness: theme.dividerTheme.thickness,
        ),
        SizedBox(height: AppSizes.h10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(s.orderDetailsTotal, style: theme.textTheme.titleMedium),
            Text(
              'EGP ${order.totalAmount.toStringAsFixed(2)}',
              style: theme.textTheme.titleLarge?.copyWith(
                color: theme.colorScheme.primary,
              ),
              softWrap: false,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ],
    );
  }
}

class _PriceRow extends StatelessWidget {
  final String label;
  final String value;
  const _PriceRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            label,
            style: theme.textTheme.bodyMedium,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SizedBox(width: AppSizes.w8),
        Text(
          value,
          style: theme.textTheme.labelLarge,
          softWrap: false,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

// ── Shipping info ─────────────────────────────────────────────────────────────

class _ShippingInfo extends StatelessWidget {
  final OrderDetailsModel order;
  const _ShippingInfo({required this.order});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _InfoRow(
          icon: Icons.person_outline_rounded,
          value: '${order.shippingFirstName} ${order.shippingLastName}',
        ),
        SizedBox(height: AppSizes.h10),
        _InfoRow(icon: Icons.phone_outlined, value: order.shippingPhone),
        SizedBox(height: AppSizes.h10),
        _InfoRow(
          icon: Icons.location_on_outlined,
          value: order.shippingAddress,
        ),
        if (order.notes != null && order.notes!.isNotEmpty) ...[
          SizedBox(height: AppSizes.h10),
          _InfoRow(icon: Icons.sticky_note_2_outlined, value: order.notes!),
        ],
      ],
    );
  }
}

// ── Payment info ──────────────────────────────────────────────────────────────

class _PaymentInfo extends StatelessWidget {
  final OrderDetailsModel order;
  const _PaymentInfo({required this.order});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = context.myColors;
    final isPaid = order.paymentStatus == 'Paid';

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: _InfoRow(
            icon: Icons.payment_outlined,
            value: order.paymentMethod,
          ),
        ),
        SizedBox(width: AppSizes.w8),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.w10,
            vertical: AppSizes.h4,
          ),
          decoration: BoxDecoration(
            color: isPaid
                ? colors.success.withValues(alpha: 0.1)
                : colors.warning.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(AppSizes.r20),
          ),
          child: Text(
            order.paymentStatus,
            style: theme.textTheme.labelSmall?.copyWith(
              color: isPaid ? colors.success : colors.warning,
              fontWeight: FontWeight.w600,
            ),
            softWrap: false,
          ),
        ),
      ],
    );
  }
}

// ── Info row ──────────────────────────────────────────────────────────────────

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String value;
  const _InfoRow({required this.icon, required this.value});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = context.myColors;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: AppSizes.h2),
          child: Icon(icon, size: AppSizes.sp16, color: colors.primary),
        ),
        SizedBox(width: AppSizes.w8),
        Expanded(child: Text(value, style: theme.textTheme.bodyMedium)),
      ],
    );
  }
}

// ── Error state ───────────────────────────────────────────────────────────────

class _ErrorState extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;
  const _ErrorState({required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: EdgeInsets.all(AppSizes.w32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.wifi_off_rounded,
              size: AppSizes.sp36,
              color: theme.colorScheme.outline,
            ),
            SizedBox(height: AppSizes.h16),
            Text(
              s.myOrdersLoadError,
              style: theme.textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: AppSizes.h8),
            Text(
              message,
              style: theme.textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: AppSizes.h24),
            FilledButton.icon(
              onPressed: onRetry,
              icon: Icon(Icons.refresh_rounded, size: AppSizes.sp18),
              label: Text(s.addressRetry),
            ),
          ],
        ),
      ),
    );
  }
}

// ── Loading skeleton ──────────────────────────────────────────────────────────

class _LoadingSkeleton extends StatelessWidget {
  const _LoadingSkeleton();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SingleChildScrollView(
      padding: EdgeInsets.all(AppSizes.w16),
      child: Column(
        children: List.generate(
          4,
          (_) => Container(
            margin: EdgeInsets.only(bottom: AppSizes.h12),
            height: AppSizes.h120,
            decoration: BoxDecoration(
              color: theme.colorScheme.surface,
              borderRadius: BorderRadius.circular(AppSizes.r16),
              border: Border.all(color: theme.colorScheme.outline),
            ),
          ),
        ),
      ),
    );
  }
}
