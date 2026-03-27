import 'package:flutter/material.dart';
import 'package:heka_store/Features/address/data/models/address_model.dart';
import 'package:heka_store/Features/address/presentation/components/address/address_popup_menu.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';

class AddressCard extends StatelessWidget {
  final AddressModel address;
  final VoidCallback onEdit;

  const AddressCard({
    super.key,
    required this.address,
    required this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    final isDefault = address.isDefault;
    final colors = context.myColors;
    final textTheme = TextTheme.of(context);

    return GestureDetector(
      onTap: onEdit,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: EdgeInsets.all(AppSizes.w16),
        decoration: BoxDecoration(
          color: colors.surface,
          borderRadius: BorderRadius.circular(AppSizes.r16),
          border: Border.all(
            color: isDefault
                ? colors.primary.withValues(alpha: .45)
                : colors.border,
            width: isDefault ? 2 : 1,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          address.nickname,
                          style: textTheme.titleMedium?.copyWith(
                            color:
                                isDefault ? colors.primary : colors.textHint,
                          ),
                        ),
                      ),
                      if (isDefault)
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 9,
                            vertical: 3,
                          ),
                          decoration: BoxDecoration(
                            color: colors.primary.withValues(alpha: .15),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            '✦ Default',
                            style: textTheme.bodySmall?.copyWith(
                              fontSize: AppSizes.sp10,
                              color: colors.primary,
                            ),
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(
                    address.fullAddress,
                    style: textTheme.bodySmall?.copyWith(
                      color: isDefault ? colors.primary : colors.textHint,
                    ),
                  ),
                  if (address.phoneNumber != null &&
                      address.phoneNumber!.isNotEmpty) ...[
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(
                          Icons.phone_outlined,
                          size: AppSizes.sp14,
                          color: isDefault ? colors.primary : colors.textHint,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          address.phoneNumber!,
                          style: TextStyle(
                            color:
                                isDefault ? colors.primary : colors.textHint,
                            fontSize: 12,
                            fontWeight: isDefault
                                ? FontWeight.w600
                                : FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(width: 4),
            AddressPopupMenu(
              address: address,
              onEdit: onEdit,
            ),
          ],
        ),
      ),
    );
  }
}