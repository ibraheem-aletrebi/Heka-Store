import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:heka_store/Features/address/data/models/address_model.dart';
import 'package:heka_store/Features/address/presentation/blocs/address/address_bloc.dart';
import 'package:heka_store/core/app/router/app_routes.dart';
import 'package:heka_store/core/di/injector.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';
import 'package:heka_store/core/resources/font_weight_helper.dart';
import 'package:heka_store/generated/l10n.dart';

Future<AddressModel?> showAddressPickerSheet(BuildContext context) {
  return showModalBottomSheet<AddressModel>(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,

    builder: (_) => BlocProvider(
      create: (context) => sl<AddressBloc>()..add(const AddressEvent.loaded()),
      child: const _AddressPickerSheet(),
    ),
  );
}

// ── Sheet root ────────────────────────────────────────────────────────────────
class _AddressPickerSheet extends StatefulWidget {
  const _AddressPickerSheet();

  @override
  State<_AddressPickerSheet> createState() => _AddressPickerSheetState();
}

class _AddressPickerSheetState extends State<_AddressPickerSheet> {
  final _searchCtrl = TextEditingController();
  final _searchFocus = FocusNode();

  @override
  void dispose() {
    _searchCtrl.dispose();
    _searchFocus.dispose();
    super.dispose();
  }

  // ── Search ─────────────────────────────────────────────────────────────────
  void _onSearchChanged(String query) =>
      context.read<AddressBloc>().add(AddressEvent.searchChanged(query));

  void _clearSearch() {
    _searchCtrl.clear();
    _onSearchChanged('');
    _searchFocus.unfocus();
  }

  // ── Navigation ─────────────────────────────────────────────────────────────
  Future<void> _goToAddAddress() async {
    final added = await context.push(AppRoutes.locationPicker);
    if (added == true && mounted) {
      context.read<AddressBloc>().add(const AddressEvent.reLoaded());
    }
  }

  Future<void> _goToEditAddress(AddressModel address) async {
    final updated = await context.push(AppRoutes.editAddress, extra: address);
    if (updated == true && mounted) {
      context.read<AddressBloc>().add(const AddressEvent.reLoaded());
    }
  }

  // ── Select ─────────────────────────────────────────────────────────────────
  void _selectAddress(AddressModel address) {
    context.read<AddressBloc>().add(AddressEvent.setDefault(address.id));
    Navigator.of(context).pop(address);
  }

  // ── Delete confirmation ────────────────────────────────────────────────────
  void _confirmDelete(BuildContext context, AddressModel address) {
    final s = S.of(context);
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.r16),
        ),
        title: Text(s.addressDeleteDialogTitle),
        content: Text(
          // uses nickname — the human-readable label of the address
          s.addressDeleteDialogContent(address.nickname),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(s.addressDeleteDialogKeep),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(ctx);
              context.read<AddressBloc>().add(AddressEvent.deleted(address.id));
            },
            style: FilledButton.styleFrom(backgroundColor: Colors.red),
            child: Text(s.addressDeleteDialogConfirm),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;

    return DraggableScrollableSheet(
      initialChildSize: 0.75,
      minChildSize: 0.5,
      maxChildSize: 0.95,
      expand: false,
      builder: (_, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: colors.background,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(AppSizes.r24),
            ),
          ),
          child: Column(
            children: [
              // ── Drag handle ────────────────────────────────────────────
              _DragHandle(),

              // ── Header ─────────────────────────────────────────────────
              Padding(
                padding: EdgeInsets.fromLTRB(
                  AppSizes.w20,
                  AppSizes.h4,
                  AppSizes.w20,
                  AppSizes.h16,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on_rounded,
                      color: colors.primary,
                      size: AppSizes.sp20,
                    ),
                    SizedBox(width: AppSizes.w8),
                    Expanded(
                      child: Text(
                        s.addressPickerTitle,
                        style: AppTextStyles.bold18.copyWith(
                          color: colors.textPrimary,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: colors.surface,
                          shape: BoxShape.circle,
                          border: Border.all(color: colors.border),
                        ),
                        child: Icon(
                          Icons.close_rounded,
                          size: AppSizes.sp16,
                          color: colors.textHint,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // ── Search bar ─────────────────────────────────────────────
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizes.w20),
                child: _SearchBar(
                  controller: _searchCtrl,
                  focusNode: _searchFocus,
                  onChanged: _onSearchChanged,
                  onClear: _clearSearch,
                ),
              ),

              SizedBox(height: AppSizes.h16),

              // ── Body ───────────────────────────────────────────────────
              Expanded(
                child: BlocConsumer<AddressBloc, AddressState>(
                  listenWhen: (p, c) =>
                      p.isSetDefaultLoading != c.isSetDefaultLoading ||
                      p.isDeleteLoading != c.isDeleteLoading,
                  listener: (context, state) {
                    if (state.error != null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Row(
                            children: [
                              const Icon(
                                Icons.error_outline,
                                color: Colors.white,
                                size: 16,
                              ),
                              SizedBox(width: AppSizes.w8),
                              Expanded(
                                child: Text(
                                  state.error!.serverMessage ??
                                      s.addressGenericError,
                                ),
                              ),
                            ],
                          ),
                          backgroundColor: Colors.red.shade700,
                          behavior: SnackBarBehavior.floating,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(AppSizes.r12),
                          ),
                        ),
                      );
                    }
                  },
                  builder: (context, state) {
                    // ── Loading skeleton ────────────────────────────────
                    if (state.isLoading) return _AddressLoadingSkeleton();

                    // ── Network error ───────────────────────────────────
                    if (state.error != null && state.addresses.isEmpty) {
                      return _ErrorState(
                        message:
                            state.error!.serverMessage ?? s.addressGenericError,
                        onRetry: () => context.read<AddressBloc>().add(
                          const AddressEvent.loaded(),
                        ),
                      );
                    }

                    // ── Search filter ───────────────────────────────────
                    // Searches nickname + fullAddress + phoneNumber
                    final query = state.searchQuery.toLowerCase().trim();
                    final filtered = query.isEmpty
                        ? state.addresses
                        : state.addresses.where((a) {
                            return a.nickname.toLowerCase().contains(query) ||
                                a.fullAddress.toLowerCase().contains(query) ||
                                (a.phoneNumber?.toLowerCase().contains(query) ??
                                    false);
                          }).toList();

                    // ── Empty states ────────────────────────────────────
                    if (filtered.isEmpty) {
                      return _EmptyState(
                        hasQuery: query.isNotEmpty,
                        onAddNew: _goToAddAddress,
                      );
                    }

                    // ── Address list ────────────────────────────────────
                    return ListView.separated(
                      controller: scrollController,
                      padding: EdgeInsets.fromLTRB(
                        AppSizes.w20,
                        0,
                        AppSizes.w20,
                        AppSizes.h32,
                      ),
                      itemCount: filtered.length,
                      separatorBuilder: (_, __) =>
                          SizedBox(height: AppSizes.h10),
                      itemBuilder: (_, i) {
                        final address = filtered[i];
                        // An address is "selected" if it's marked default,
                        // or if it's the only one in the list.
                        final isSelected =
                            address.isDefault || state.addresses.length == 1;
                        final isSettingDefault =
                            state.isSetDefaultLoading && isSelected;

                        return _AddressTile(
                          address: address,
                          isSelected: isSelected,
                          isSettingDefault: isSettingDefault,
                          isDeleteLoading: state.isDeleteLoading,
                          onTap: () => _selectAddress(address),
                          onEdit: () => _goToEditAddress(address),
                          onDelete: () => _confirmDelete(context, address),
                        );
                      },
                    );
                  },
                ),
              ),

              // ── Add new address ─────────────────────────────────────────
              _AddAddressButton(onTap: _goToAddAddress),
            ],
          ),
        );
      },
    );
  }
}

// ── Drag handle ───────────────────────────────────────────────────────────────
class _DragHandle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: AppSizes.h12, bottom: AppSizes.h8),
      child: Center(
        child: Container(
          width: 40,
          height: 4,
          decoration: BoxDecoration(
            color: context.myColors.divider,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ),
    );
  }
}

// ── Search bar ────────────────────────────────────────────────────────────────
class _SearchBar extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final ValueChanged<String> onChanged;
  final VoidCallback onClear;

  const _SearchBar({
    required this.controller,
    required this.focusNode,
    required this.onChanged,
    required this.onClear,
  });

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;

    return TextField(
      controller: controller,
      focusNode: focusNode,
      onChanged: onChanged,
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        hintText: s.addressSearchHint,
        hintStyle: AppTextStyles.regular14.copyWith(color: colors.textHint),
        prefixIcon: Icon(
          Icons.search_rounded,
          color: colors.textHint,
          size: AppSizes.sp20,
        ),
        suffixIcon: ValueListenableBuilder<TextEditingValue>(
          valueListenable: controller,
          builder: (_, value, __) => value.text.isNotEmpty
              ? GestureDetector(
                  onTap: onClear,
                  child: Icon(
                    Icons.close_rounded,
                    color: colors.textHint,
                    size: AppSizes.sp18,
                  ),
                )
              : const SizedBox.shrink(),
        ),
        filled: true,
        fillColor: colors.surface,
        contentPadding: EdgeInsets.symmetric(
          horizontal: AppSizes.w16,
          vertical: AppSizes.h12,
        ),
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
      ),
    );
  }
}

// ── Address tile ──────────────────────────────────────────────────────────────
class _AddressTile extends StatelessWidget {
  final AddressModel address;
  final bool isSelected;
  final bool isSettingDefault;
  final bool isDeleteLoading;
  final VoidCallback onTap;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const _AddressTile({
    required this.address,
    required this.isSelected,
    required this.isSettingDefault,
    required this.isDeleteLoading,
    required this.onTap,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        color: isSelected
            ? colors.primary.withValues(alpha: 0.06)
            : colors.surface,
        borderRadius: BorderRadius.circular(AppSizes.r14),
        border: Border.all(
          color: isSelected ? colors.primary : colors.border,
          width: isSelected ? 1.5 : 1,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(AppSizes.r14),
        child: InkWell(
          onTap: isSettingDefault ? null : onTap,
          borderRadius: BorderRadius.circular(AppSizes.r14),
          child: Padding(
            padding: EdgeInsets.all(AppSizes.w14),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ── Animated radio indicator ─────────────────────────
                Padding(
                  padding: EdgeInsets.only(top: AppSizes.h2),
                  child: isSettingDefault
                      ? SizedBox(
                          width: AppSizes.sp20,
                          height: AppSizes.sp20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: colors.primary,
                          ),
                        )
                      : AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          width: AppSizes.sp20,
                          height: AppSizes.sp20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: isSelected
                                  ? colors.primary
                                  : colors.border,
                              width: isSelected ? 5 : 1.5,
                            ),
                            color: isSelected
                                ? colors.primary
                                : Colors.transparent,
                          ),
                          child: isSelected
                              ? Icon(Icons.check, size: 11, color: Colors.white)
                              : null,
                        ),
                ),

                SizedBox(width: AppSizes.w12),

                // ── Content ──────────────────────────────────────────
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Nickname row + default badge
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              address.nickname, // ← AddressModel.nickname
                              style: AppTextStyles.semiBold14.copyWith(
                                color: colors.textPrimary,
                              ),
                            ),
                          ),
                          if (address.isDefault) // ← AddressModel.isDefault
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: AppSizes.w6,
                                vertical: AppSizes.h2,
                              ),
                              decoration: BoxDecoration(
                                color: colors.primary.withValues(alpha: 0.1),
                                borderRadius: BorderRadius.circular(
                                  AppSizes.r6,
                                ),
                              ),
                              child: Text(
                                s.addressDefaultBadge,
                                style: AppTextStyles.regular10.copyWith(
                                  color: colors.primary,
                                  fontWeight: FontWeightHelper.semiBold,
                                ),
                              ),
                            ),
                        ],
                      ),

                      SizedBox(height: AppSizes.h4),

                      // Full address line
                      Text(
                        address.fullAddress, // ← AddressModel.fullAddress
                        style: AppTextStyles.regular12.copyWith(
                          color: colors.textSecondary,
                          height: 1.4,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),

                      SizedBox(height: AppSizes.h6),

                      // Coordinates + optional phone
                      if (address.phoneNumber != null)
                        Row(
                          children: [
                            // Phone — only shown when present
                            Icon(
                              Icons.phone_outlined,
                              size: AppSizes.sp12,
                              color: colors.textHint,
                            ),
                            SizedBox(width: AppSizes.w3),
                            Flexible(
                              child: Text(
                                address
                                    .phoneNumber!, // ← AddressModel.phoneNumber
                                style: AppTextStyles.regular11.copyWith(
                                  color: colors.textHint,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),

                      SizedBox(height: AppSizes.h10),

                      // Edit / Delete actions
                      Row(
                        children: [
                          _TileAction(
                            icon: Icons.edit_outlined,
                            label: s.addressActionEdit,
                            color: colors.primary,
                            onTap: onEdit,
                          ),
                          SizedBox(width: AppSizes.w12),
                          _TileAction(
                            icon: Icons.delete_outline_rounded,
                            label: s.addressActionDelete,
                            color: Colors.red.shade400,
                            onTap: isDeleteLoading ? null : onDelete,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ── Tile action (edit / delete) ───────────────────────────────────────────────
class _TileAction extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback? onTap;

  const _TileAction({
    required this.icon,
    required this.label,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: AppSizes.sp13, color: color),
          SizedBox(width: AppSizes.w3),
          Text(
            label,
            style: AppTextStyles.regular11.copyWith(
              color: color,
              fontWeight: FontWeightHelper.semiBold,
            ),
          ),
        ],
      ),
    );
  }
}

// ── Add address button ────────────────────────────────────────────────────────
class _AddAddressButton extends StatelessWidget {
  final VoidCallback onTap;
  const _AddAddressButton({required this.onTap});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;

    return SafeArea(
      top: false,
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          AppSizes.w20,
          AppSizes.h8,
          AppSizes.w20,
          AppSizes.h16,
        ),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            height: 52,
            decoration: BoxDecoration(
              border: Border.all(color: colors.primary, width: 1.5),
              borderRadius: BorderRadius.circular(AppSizes.r14),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add_location_alt_outlined,
                  color: colors.primary,
                  size: AppSizes.sp18,
                ),
                SizedBox(width: AppSizes.w8),
                Text(
                  s.addressPickerAddNew,
                  style: AppTextStyles.semiBold15.copyWith(
                    color: colors.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ── Loading skeleton ──────────────────────────────────────────────────────────
class _AddressLoadingSkeleton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.w20),
      itemCount: 3,
      separatorBuilder: (_, __) => SizedBox(height: AppSizes.h10),
      itemBuilder: (_, __) => _SkeletonTile(),
    );
  }
}

class _SkeletonTile extends StatefulWidget {
  @override
  State<_SkeletonTile> createState() => _SkeletonTileState();
}

class _SkeletonTileState extends State<_SkeletonTile>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl;
  late final Animation<double> _anim;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true);
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
        height: 110,
        padding: EdgeInsets.all(AppSizes.w14),
        decoration: BoxDecoration(
          color: Color.lerp(colors.surface, colors.border, _anim.value * 0.5),
          borderRadius: BorderRadius.circular(AppSizes.r14),
          border: Border.all(color: colors.border),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // nickname placeholder
            Container(
              height: 12,
              width: 100,
              decoration: BoxDecoration(
                color: colors.border,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            SizedBox(height: AppSizes.h8),
            // fullAddress placeholder line 1
            Container(
              height: 10,
              width: double.infinity,
              decoration: BoxDecoration(
                color: colors.border,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            SizedBox(height: AppSizes.h6),
            // fullAddress placeholder line 2
            Container(
              height: 10,
              width: 200,
              decoration: BoxDecoration(
                color: colors.border,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            SizedBox(height: AppSizes.h8),
            // coords placeholder
            Container(
              height: 9,
              width: 140,
              decoration: BoxDecoration(
                color: colors.border,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ── Empty state ───────────────────────────────────────────────────────────────
class _EmptyState extends StatelessWidget {
  final bool hasQuery;
  final VoidCallback onAddNew;

  const _EmptyState({required this.hasQuery, required this.onAddNew});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;

    return Center(
      child: Padding(
        padding: EdgeInsets.all(AppSizes.w32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              hasQuery ? Icons.search_off_rounded : Icons.location_off_outlined,
              size: 56,
              color: colors.textHint,
            ),
            SizedBox(height: AppSizes.h16),
            Text(
              hasQuery ? s.addressSearchNoResults : s.addressEmptyTitle,
              style: AppTextStyles.semiBold16.copyWith(
                color: colors.textPrimary,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: AppSizes.h8),
            Text(
              hasQuery ? s.addressSearchNoResultsHint : s.addressEmptySubtitle,
              style: AppTextStyles.regular13.copyWith(color: colors.textHint),
              textAlign: TextAlign.center,
            ),
            if (!hasQuery) ...[
              SizedBox(height: AppSizes.h24),
              FilledButton.icon(
                onPressed: onAddNew,
                icon: const Icon(Icons.add_location_alt_outlined, size: 18),
                label: Text(s.addressPickerAddNew),
              ),
            ],
          ],
        ),
      ),
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
    final colors = context.myColors;

    return Center(
      child: Padding(
        padding: EdgeInsets.all(AppSizes.w32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.wifi_off_rounded, size: 56, color: colors.textHint),
            SizedBox(height: AppSizes.h16),
            Text(
              s.addressLoadError,
              style: AppTextStyles.semiBold16.copyWith(
                color: colors.textPrimary,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: AppSizes.h8),
            Text(
              message,
              style: AppTextStyles.regular13.copyWith(color: colors.textHint),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: AppSizes.h24),
            FilledButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh_rounded, size: 18),
              label: Text(s.addressRetry),
            ),
          ],
        ),
      ),
    );
  }
}
