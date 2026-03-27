import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/address/data/models/address_model.dart';
import 'package:heka_store/Features/address/presentation/blocs/address/address_bloc.dart';
import 'package:heka_store/Features/address/presentation/components/address/address_delete_dialog.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';

class AddressPopupMenu extends StatelessWidget {
  final AddressModel address;
  final VoidCallback onEdit;

  const AddressPopupMenu({
    super.key,
    required this.address,
    required this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDefault = address.isDefault;
    final colors = context.myColors;

    return PopupMenuButton<String>(
      onSelected: (v) async {
        if (v == 'edit') {
          onEdit();
        }

        if (v == 'delete') {
          final confirmed = await showDialog<bool>(
            context: context,
            builder: (_) => AddressDeleteDialog(address: address),
          );
          if (confirmed == true && context.mounted) {
            context.read<AddressBloc>().add(const AddressEvent.loaded());
          }
        }

        if (v == 'default') {
          if (context.mounted) {
            context
                .read<AddressBloc>()
                .add(AddressEvent.setDefault(address.id));
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
          label: 'Edit',
          iconColor: colors.primary,
          iconBg: colors.primarySoft,
          labelColor: colors.textPrimary,
        ),
        const PopupMenuDivider(height: 1),
        if (!isDefault)
          _menuItem(
            value: 'default',
            icon: Icons.check_circle_rounded,
            label: 'Set as Default',
            iconColor: colors.success,
            iconBg: colors.background,
            labelColor: colors.textPrimary,
          ),
        if (!isDefault) const PopupMenuDivider(height: 1),
        _menuItem(
          value: 'delete',
          icon: Icons.delete_rounded,
          label: 'Delete',
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
      height: 48,
      child: Row(
        children: [
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: iconBg,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, color: iconColor, size: 16),
          ),
          const SizedBox(width: 12),
          Text(
            label,
            style: TextStyle(
              color: labelColor,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}