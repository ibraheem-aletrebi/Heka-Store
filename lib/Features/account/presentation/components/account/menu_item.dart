import 'package:flutter/material.dart';
import 'package:heka_store/core/resources/app_sizes.dart';

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final IconData? trailingIcon;
  final Color? iconColor;
  final Color? trailingIconColor;
  final Color? textColor;

  const MenuItem({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
    this.trailingIcon = Icons.arrow_forward_ios_rounded,
    this.iconColor,
    this.trailingIconColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(
        horizontal: AppSizes.w16,
        vertical: AppSizes.w8,
      ),
      dense: true,
      minLeadingWidth: 0,
      horizontalTitleGap: AppSizes.w8,
      tileColor: Colors.transparent,
      leading: Icon(icon, color: iconColor),
      title: Text(
        label,
        style: Theme.of(
          context,
        ).textTheme.bodyMedium?.copyWith(color: textColor),
      ),
      trailing: trailingIcon != null
          ? Icon(trailingIcon, color: trailingIconColor, size: AppSizes.sp16)
          : null,
      onTap: onTap,
    );
  }
}
