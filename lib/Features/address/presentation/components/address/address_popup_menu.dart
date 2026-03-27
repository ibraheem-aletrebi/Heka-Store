import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:heka_store/Features/address/data/models/address_model.dart';
import 'package:heka_store/Features/address/presentation/blocs/address/address_bloc.dart';
import 'package:heka_store/Features/address/presentation/components/address/address_delete_dialog.dart';
import 'package:heka_store/core/app/router/app_routes.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/generated/l10n.dart';

class AddressPopupMenu extends StatelessWidget {
  final AddressModel address;

  const AddressPopupMenu({super.key, required this.address});

  @override
  Widget build(BuildContext context) {
    final bool isDefault = address.isDefault;
    final colors = context.myColors;
    final s = S.of(context);
    return PopupMenuButton<String>(
      onSelected: (v) async {
        if (v == 'edit') {
          final bool? updated =
              await context.push(AppRoutes.editAddress, extra: address)
                  as bool?;
          if (updated == true && context.mounted) {
            context.read<AddressBloc>().add(const AddressEvent.reLoaded());
          }
        }

        if (v == 'delete') {
          if (context.mounted) {
            final confirmed = await showDialog<bool>(
              context: context,
              builder: (_) => AddressDeleteDialog(address: address),
            );
            if (confirmed == true && context.mounted) {
              context.read<AddressBloc>().add(const AddressEvent.reLoaded());
            }
          }
        }

        if (v == 'default') {
          if (context.mounted) {
            context.read<AddressBloc>().add(
              AddressEvent.setDefault(address.id),
            );
          }
        }
      },
      icon: Icon(
        Icons.more_vert_rounded,
        color: colors.textSecondary,
        size: AppSizes.sp20,
      ),
      itemBuilder: (_) => [
        _menuItem(
          value: 'edit',
          icon: Icons.edit_rounded,
          label: s.Edit,
          iconColor: colors.primary,
          iconBg: colors.primarySoft,
          labelColor: colors.textPrimary,
        ),
        const PopupMenuDivider(height: 1),
        if (!isDefault)
          _menuItem(
            value: 'default',
            icon: Icons.check_circle_rounded,
            label: s.setAsDefault,
            iconColor: colors.success,
            iconBg: colors.background,
            labelColor: colors.textPrimary,
          ),
        if (!isDefault) const PopupMenuDivider(height: 1),
        _menuItem(
          value: 'delete',
          icon: Icons.delete_rounded,
          label: s.delete,
          iconColor: colors.error,
          iconBg: colors.background,
          labelColor: colors.textPrimary,
        ),
      ],
    );
  }

  PopupMenuItem<String> _menuItem({
    required String value,
    required IconData icon,
    required String label,
    required Color iconColor,
    required Color iconBg,
    required Color labelColor,
  }) {
    return PopupMenuItem(
      value: value,
      height: AppSizes.h40,
      child: Row(
        children: [
          Container(
            width: AppSizes.w32,
            height: AppSizes.w32,
            decoration: BoxDecoration(
              color: iconBg,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, color: iconColor, size: AppSizes.sp16),
          ),
          const SizedBox(width: 12),
          Text(label),
        ],
      ),
    );
  }
}
