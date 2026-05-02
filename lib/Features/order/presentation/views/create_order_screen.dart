import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/address/data/models/address_model.dart';
import 'package:heka_store/Features/address/presentation/blocs/address/address_bloc.dart';
import 'package:heka_store/Features/address/presentation/components/address/address_picker_sheet.dart';
import 'package:heka_store/Features/order/data/models/create_order_request_model.dart';
import 'package:heka_store/Features/order/presentation/blocs/order/order_bloc.dart';
import 'package:heka_store/Features/order/presentation/views/order_success_screen.dart';
import 'package:heka_store/Features/order/presentation/views/order_failure_screen.dart';
import 'package:heka_store/Features/order/presentation/views/payment_webview.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';
import 'package:heka_store/generated/l10n.dart';

class CreateOrderScreen extends StatefulWidget {
  /// No longer requires a pre-selected address — loads from [AddressBloc].
  const CreateOrderScreen({super.key});

  @override
  State<CreateOrderScreen> createState() => _CreateOrderScreenState();
}

class _CreateOrderScreenState extends State<CreateOrderScreen> {
  final _formKey = GlobalKey<FormState>();

  final _firstNameCtrl = TextEditingController();
  final _lastNameCtrl = TextEditingController();
  final _phoneCtrl = TextEditingController();
  final _notesCtrl = TextEditingController();

  PaymentMethod _paymentMethod = PaymentMethod.cashOnDelivery;

  /// Locally selected address — overrides the bloc default when the user
  /// picks a different address from the sheet.
  AddressModel? _selectedAddress;

  @override
  void initState() {
    super.initState();
    // Trigger address load if not already loaded
    final addressState = context.read<AddressBloc>().state;
    if (addressState.addresses.isEmpty && !addressState.isLoading) {
      context.read<AddressBloc>().add(const AddressEvent.loaded());
    } else {
      // Seed immediately from already-loaded state
      _seedAddress(addressState);
    }
  }

  /// Picks the default address from [state], falling back to first if none
  /// is marked default.
  void _seedAddress(AddressState state) {
    if (state.addresses.isEmpty) return;
    final defaultAddr = state.addresses.cast<AddressModel?>().firstWhere(
          (a) => a!.isDefault,
          orElse: () => state.addresses.first,
        );
    if (_selectedAddress == null && defaultAddr != null) {
      setState(() => _selectedAddress = defaultAddr);
    }
  }

  @override
  void dispose() {
    _firstNameCtrl.dispose();
    _lastNameCtrl.dispose();
    _phoneCtrl.dispose();
    _notesCtrl.dispose();
    super.dispose();
  }

  // ── Open address picker sheet ──────────────────────────────────────────────
  Future<void> _changeAddress() async {
    final picked = await showAddressPickerSheet(context);
    if (picked != null && mounted) {
      setState(() => _selectedAddress = picked);
    }
  }

  // ── Submit ─────────────────────────────────────────────────────────────────
  void _submit() {
    if (_selectedAddress == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(S.of(context).orderNoAddressSelected),
          backgroundColor: Colors.orange.shade700,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSizes.r12)),
        ),
      );
      return;
    }
    if (!_formKey.currentState!.validate()) return;
    FocusScope.of(context).unfocus();

    context.read<OrderBloc>().add(
          OrderEvent.placed(
            request: CreateOrderRequestModel(
              shippingFirstName: _firstNameCtrl.text.trim(),
              shippingLastName: _lastNameCtrl.text.trim(),
              shippingPhone: _phoneCtrl.text.trim(),
              addressId: _selectedAddress!.id,
              latitude: _selectedAddress!.latitude,
              longitude: _selectedAddress!.longitude,
              shippingAddress: _selectedAddress!.fullAddress,
              paymentMethod: _paymentMethod,
              notes: _notesCtrl.text.trim().isEmpty
                  ? null
                  : _notesCtrl.text.trim(),
            ),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;

    return BlocListener<OrderBloc, OrderState>(
      listener: (context, state) {
        // Open WebView for online payment
        if (state.status == OrderStatus.awaitingPayment &&
            state.paymentUrl != null) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => BlocProvider.value(
                value: context.read<OrderBloc>(),
                child: PaymentWebViewScreen(paymentUrl: state.paymentUrl!),
              ),
            ),
          );
        }
        // Navigate to success
        if (state.isSuccess && state.order != null) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (_) => OrderSuccessScreen(order: state.order!),
            ),
          );
        }
        // Navigate to failure screen
        if (state.status == OrderStatus.failed) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (_) => BlocProvider.value(
                value: context.read<OrderBloc>(),
                child: OrderFailureScreen(
                  errorMessage: state.error?.serverMessage ?? s.orderGenericError,
                ),
              ),
            ),
          );
        }

        // Payment cancelled → failure screen with softer messaging
        if (state.status == OrderStatus.paymentCancelled) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (_) => BlocProvider.value(
                value: context.read<OrderBloc>(),
                child: const OrderFailureScreen(isCancelled: true),
              ),
            ),
          );
        }
      },
      child: Scaffold(
        backgroundColor: colors.background,
        appBar: AppBar(
          title: Text(s.createOrderTitle,
              style:
                  AppTextStyles.bold18.copyWith(color: colors.textPrimary)),
          backgroundColor: colors.surface,
          elevation: 0,
        ),
        body: BlocConsumer<AddressBloc, AddressState>(
          // Seed _selectedAddress whenever addresses load/reload
          listener: (context, addressState) => _seedAddress(addressState),
          builder: (context, addressState) {
            return BlocBuilder<OrderBloc, OrderState>(
              builder: (context, orderState) {
                return Stack(
                  children: [
                    SingleChildScrollView(
                      padding: EdgeInsets.fromLTRB(AppSizes.w20,
                          AppSizes.h16, AppSizes.w20, AppSizes.h100),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // ── Delivery address ───────────────────────
                            _SectionLabel(
                                label: s.orderSectionDeliveryAddress),
                            SizedBox(height: AppSizes.h8),

                            // Three states: loading / error / loaded
                            if (addressState.isLoading &&
                                _selectedAddress == null)
                              _AddressCardSkeleton()
                            else if (addressState.error != null &&
                                _selectedAddress == null)
                              _AddressErrorCard(
                                onRetry: () => context
                                    .read<AddressBloc>()
                                    .add(const AddressEvent.loaded()),
                              )
                            else if (_selectedAddress != null)
                              _AddressCard(
                                address: _selectedAddress!,
                                onChangeTap: _changeAddress,
                              )
                            else
                              // addresses loaded but all empty
                              _NoAddressCard(onAddTap: _changeAddress),

                            SizedBox(height: AppSizes.h24),

                            // ── Contact details ────────────────────────
                            _SectionLabel(label: s.orderSectionContact),
                            SizedBox(height: AppSizes.h12),
                            Row(
                              children: [
                                Expanded(
                                  child: _OrderTextField(
                                    controller: _firstNameCtrl,
                                    label: s.orderFieldFirstName,
                                    textInputAction: TextInputAction.next,
                                    validator: (v) =>
                                        (v?.trim().isEmpty ?? true)
                                            ? s.orderFieldRequired
                                            : null,
                                  ),
                                ),
                                SizedBox(width: AppSizes.w12),
                                Expanded(
                                  child: _OrderTextField(
                                    controller: _lastNameCtrl,
                                    label: s.orderFieldLastName,
                                    textInputAction: TextInputAction.next,
                                    validator: (v) =>
                                        (v?.trim().isEmpty ?? true)
                                            ? s.orderFieldRequired
                                            : null,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: AppSizes.h12),
                            _OrderTextField(
                              controller: _phoneCtrl,
                              label: s.orderFieldPhone,
                              keyboardType: TextInputType.phone,
                              textInputAction: TextInputAction.next,
                              validator: (v) {
                                if (v?.trim().isEmpty ?? true) {
                                  return s.orderFieldRequired;
                                }
                                if (v!.trim().length < 10) {
                                  return s.orderFieldPhoneInvalid;
                                }
                                return null;
                              },
                            ),

                            SizedBox(height: AppSizes.h24),

                            // ── Payment method ─────────────────────────
                            _SectionLabel(label: s.orderSectionPayment),
                            SizedBox(height: AppSizes.h12),
                            _PaymentMethodSelector(
                              selected: _paymentMethod,
                              onChanged: (method) =>
                                  setState(() => _paymentMethod = method),
                            ),

                            SizedBox(height: AppSizes.h24),

                            // ── Notes ──────────────────────────────────
                            _SectionLabel(
                                label: s.orderSectionNotes,
                                optional: true),
                            SizedBox(height: AppSizes.h8),
                            _OrderTextField(
                              controller: _notesCtrl,
                              label: s.orderFieldNotesHint,
                              maxLines: 3,
                              textInputAction: TextInputAction.done,
                            ),
                          ],
                        ),
                      ),
                    ),

                    // ── Sticky bottom bar ──────────────────────────────
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: _OrderBottomBar(
                        isLoading: orderState.isLoading,
                        isAddressReady: _selectedAddress != null,
                        paymentMethod: _paymentMethod,
                        onSubmit: _submit,
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}

// ── Address card (loaded) ─────────────────────────────────────────────────────
class _AddressCard extends StatelessWidget {
  final AddressModel address;
  final VoidCallback onChangeTap;

  const _AddressCard({required this.address, required this.onChangeTap});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final s = S.of(context);

    return Container(
      padding: EdgeInsets.all(AppSizes.w14),
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(AppSizes.r12),
        border: Border.all(color: colors.border),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: colors.primary.withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.location_on_rounded,
                color: colors.primary, size: AppSizes.sp18),
          ),
          SizedBox(width: AppSizes.w12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(address.nickname,
                    style: AppTextStyles.semiBold14
                        .copyWith(color: colors.textPrimary)),
                SizedBox(height: AppSizes.h2),
                Text(address.fullAddress,
                    style: AppTextStyles.regular12
                        .copyWith(color: colors.textSecondary),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis),
                if (address.phoneNumber != null) ...[
                  SizedBox(height: AppSizes.h2),
                  Text(address.phoneNumber!,
                      style: AppTextStyles.regular12
                          .copyWith(color: colors.textHint)),
                ],
              ],
            ),
          ),
          SizedBox(width: AppSizes.w8),
          // ── Change button ──────────────────────────────────────────
          GestureDetector(
            onTap: onChangeTap,
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.w10, vertical: AppSizes.h6),
              decoration: BoxDecoration(
                color: colors.primary.withValues(alpha: 0.08),
                borderRadius: BorderRadius.circular(AppSizes.r8),
              ),
              child: Text(
                s.orderAddressChange,
                style: AppTextStyles.semiBold12
                    .copyWith(color: colors.primary),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ── Address card skeleton (while loading) ─────────────────────────────────────
class _AddressCardSkeleton extends StatefulWidget {
  @override
  State<_AddressCardSkeleton> createState() => _AddressCardSkeletonState();
}

class _AddressCardSkeletonState extends State<_AddressCardSkeleton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl;
  late final Animation<double> _anim;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 900))
      ..repeat(reverse: true);
    _anim = CurvedAnimation(parent: _ctrl, curve: Curves.easeInOut);
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    return AnimatedBuilder(
      animation: _anim,
      builder: (_, __) => Container(
        height: 80,
        padding: EdgeInsets.all(AppSizes.w14),
        decoration: BoxDecoration(
          color:
              Color.lerp(colors.surface, colors.border, _anim.value * 0.4),
          borderRadius: BorderRadius.circular(AppSizes.r12),
          border: Border.all(color: colors.border),
        ),
        child: Row(
          children: [
            Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                    color: colors.border, shape: BoxShape.circle)),
            SizedBox(width: AppSizes.w12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 12,
                      width: 100,
                      decoration: BoxDecoration(
                          color: colors.border,
                          borderRadius: BorderRadius.circular(4))),
                  SizedBox(height: AppSizes.h6),
                  Container(
                      height: 10,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: colors.border,
                          borderRadius: BorderRadius.circular(4))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ── Address error card ────────────────────────────────────────────────────────
class _AddressErrorCard extends StatelessWidget {
  final VoidCallback onRetry;
  const _AddressErrorCard({required this.onRetry});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    return Container(
      padding: EdgeInsets.all(AppSizes.w14),
      decoration: BoxDecoration(
        color: Colors.red.shade50,
        borderRadius: BorderRadius.circular(AppSizes.r12),
        border: Border.all(color: Colors.red.shade200),
      ),
      child: Row(
        children: [
          Icon(Icons.wifi_off_rounded,
              color: Colors.red.shade400, size: AppSizes.sp20),
          SizedBox(width: AppSizes.w12),
          Expanded(
            child: Text(s.orderAddressLoadError,
                style: AppTextStyles.regular13
                    .copyWith(color: Colors.red.shade700)),
          ),
          SizedBox(width: AppSizes.w8),
          GestureDetector(
            onTap: onRetry,
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.w10, vertical: AppSizes.h6),
              decoration: BoxDecoration(
                color: Colors.red.shade100,
                borderRadius: BorderRadius.circular(AppSizes.r8),
              ),
              child: Text(s.addressRetry,
                  style: AppTextStyles.semiBold12
                      .copyWith(color: Colors.red.shade700)),
            ),
          ),
        ],
      ),
    );
  }
}

// ── No address card (empty list) ──────────────────────────────────────────────
class _NoAddressCard extends StatelessWidget {
  final VoidCallback onAddTap;
  const _NoAddressCard({required this.onAddTap});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final s = S.of(context);

    return GestureDetector(
      onTap: onAddTap,
      child: Container(
        padding: EdgeInsets.all(AppSizes.w14),
        decoration: BoxDecoration(
          color: colors.surface,
          borderRadius: BorderRadius.circular(AppSizes.r12),
          border:
              Border.all(color: colors.primary.withValues(alpha: 0.4), width: 1.5),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: colors.primary.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.add_location_alt_outlined,
                  color: colors.primary, size: AppSizes.sp18),
            ),
            SizedBox(width: AppSizes.w12),
            Text(s.orderAddressAddNew,
                style: AppTextStyles.semiBold14
                    .copyWith(color: colors.primary)),
          ],
        ),
      ),
    );
  }
}

// ── Payment method selector ───────────────────────────────────────────────────
class _PaymentMethodSelector extends StatelessWidget {
  final PaymentMethod selected;
  final ValueChanged<PaymentMethod> onChanged;

  const _PaymentMethodSelector({
    required this.selected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _PaymentMethodTile(
          method: PaymentMethod.cashOnDelivery,
          selected: selected,
          icon: Icons.payments_outlined,
          label: S.of(context).orderPaymentCash,
          subtitle: S.of(context).orderPaymentCashSubtitle,
          onTap: () => onChanged(PaymentMethod.cashOnDelivery),
        ),
        SizedBox(height: AppSizes.h10),
        _PaymentMethodTile(
          method: PaymentMethod.creditCard,
          selected: selected,
          icon: Icons.credit_card_outlined,
          label: S.of(context).orderPaymentOnline,
          subtitle: S.of(context).orderPaymentOnlineSubtitle,
          onTap: () => onChanged(PaymentMethod.creditCard),
        ),
      ],
    );
  }
}

class _PaymentMethodTile extends StatelessWidget {
  final PaymentMethod method;
  final PaymentMethod selected;
  final IconData icon;
  final String label;
  final String subtitle;
  final VoidCallback onTap;

  const _PaymentMethodTile({
    required this.method,
    required this.selected,
    required this.icon,
    required this.label,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final isSelected = method == selected;

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: EdgeInsets.all(AppSizes.w14),
        decoration: BoxDecoration(
          color: isSelected
              ? colors.primary.withValues(alpha: 0.06)
              : colors.surface,
          borderRadius: BorderRadius.circular(AppSizes.r12),
          border: Border.all(
            color: isSelected ? colors.primary : colors.border,
            width: isSelected ? 1.5 : 1,
          ),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: isSelected
                    ? colors.primary.withValues(alpha: 0.12)
                    : colors.background,
                borderRadius: BorderRadius.circular(AppSizes.r8),
              ),
              child: Icon(icon,
                  color: isSelected ? colors.primary : colors.textHint,
                  size: AppSizes.sp20),
            ),
            SizedBox(width: AppSizes.w12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(label,
                      style: AppTextStyles.semiBold14.copyWith(
                        color:
                            isSelected ? colors.primary : colors.textPrimary,
                      )),
                  Text(subtitle,
                      style: AppTextStyles.regular12
                          .copyWith(color: colors.textHint)),
                ],
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: AppSizes.sp20,
              height: AppSizes.sp20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? colors.primary : colors.border,
                  width: isSelected ? 5 : 1.5,
                ),
                color: isSelected ? colors.primary : Colors.transparent,
              ),
              child: isSelected
                  ? Icon(Icons.check, size: 11, color: Colors.white)
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}

// ── Bottom bar ────────────────────────────────────────────────────────────────
class _OrderBottomBar extends StatelessWidget {
  final bool isLoading;
  final bool isAddressReady;
  final PaymentMethod paymentMethod;
  final VoidCallback onSubmit;

  const _OrderBottomBar({
    required this.isLoading,
    required this.isAddressReady,
    required this.paymentMethod,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;
    final isCod = paymentMethod == PaymentMethod.cashOnDelivery;
    final isDisabled = isLoading || !isAddressReady;

    return Container(
      padding: EdgeInsets.fromLTRB(
          AppSizes.w20, AppSizes.h12, AppSizes.w20, AppSizes.h24),
      decoration: BoxDecoration(
        color: colors.surface,
        border: Border(top: BorderSide(color: colors.divider, width: 1)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 12,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: GestureDetector(
          onTap: isDisabled ? null : onSubmit,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            height: 52,
            decoration: BoxDecoration(
              color: isDisabled
                  ? colors.primary.withValues(alpha: 0.4)
                  : colors.primary,
              borderRadius: BorderRadius.circular(AppSizes.r14),
              boxShadow: isDisabled
                  ? []
                  : [
                      BoxShadow(
                        color: colors.primary.withValues(alpha: 0.35),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (isLoading)
                  SizedBox(
                    width: AppSizes.sp18,
                    height: AppSizes.sp18,
                    child: CircularProgressIndicator(
                        strokeWidth: 2, color: Colors.white),
                  )
                else
                  Icon(
                    isCod
                        ? Icons.check_circle_outline_rounded
                        : Icons.credit_card_outlined,
                    color: Colors.white,
                    size: AppSizes.sp18,
                  ),
                SizedBox(width: AppSizes.w8),
                Text(
                  isLoading
                      ? s.orderPlacingOrder
                      : isCod
                          ? s.orderConfirmCash
                          : s.orderProceedToPayment,
                  style: AppTextStyles.semiBold15
                      .copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ── Section label ─────────────────────────────────────────────────────────────
class _SectionLabel extends StatelessWidget {
  final String label;
  final bool optional;
  const _SectionLabel({required this.label, this.optional = false});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final s = S.of(context);
    return Row(
      children: [
        Text(label,
            style: AppTextStyles.semiBold15
                .copyWith(color: colors.textPrimary)),
        if (optional) ...[
          SizedBox(width: AppSizes.w6),
          Text('(${s.orderOptional})',
              style:
                  AppTextStyles.regular12.copyWith(color: colors.textHint)),
        ],
      ],
    );
  }
}

// ── Text field ────────────────────────────────────────────────────────────────
class _OrderTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final int maxLines;

  const _OrderTextField({
    required this.controller,
    required this.label,
    this.keyboardType,
    this.textInputAction,
    this.validator,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      maxLines: maxLines,
      validator: validator,
      style: AppTextStyles.regular14.copyWith(color: colors.textPrimary),
      decoration: InputDecoration(
        labelText: label,
        labelStyle:
            AppTextStyles.regular14.copyWith(color: colors.textHint),
        filled: true,
        fillColor: colors.surface,
        contentPadding: EdgeInsets.symmetric(
            horizontal: AppSizes.w16, vertical: AppSizes.h14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.r12),
          borderSide: BorderSide(color: colors.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.r12),
          borderSide: BorderSide(color: colors.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.r12),
          borderSide: BorderSide(color: colors.primary, width: 1.5),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.r12),
          borderSide: BorderSide(color: Colors.red.shade400),
        ),
      ),
    );
  }
}