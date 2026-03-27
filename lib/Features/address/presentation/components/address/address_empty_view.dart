import 'package:flutter/material.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_button/custom_button.dart';
import 'package:heka_store/generated/l10n.dart';

class AddressEmptyView extends StatelessWidget {
  final bool isSearch;
  final VoidCallback onAdd;
  const AddressEmptyView({
    super.key,
    required this.isSearch,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final s = S.of(context);
    final textTheme = TextTheme.of(context);
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.w40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: AppSizes.w80,
              height: AppSizes.w80,
              decoration: BoxDecoration(
                color: colors.primary.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(AppSizes.r16),
              ),
              child: Icon(
                isSearch
                    ? Icons.search_off_rounded
                    : Icons.location_off_rounded,
                color: colors.primary,
                size: AppSizes.w48,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              isSearch ? s.noResultsFound : s.noAddressesYet,
              style: textTheme.titleMedium?.copyWith(color: colors.textPrimary),
            ),
            const SizedBox(height: 8),
            Text(
              isSearch ? s.tryDifferentSearch : s.addFirstAddress,
              textAlign: TextAlign.center,
              style: textTheme.bodyMedium,
            ),
            if (!isSearch) ...[
              const SizedBox(height: 28),
              CustomButton(text: s.addAddress, onPressed: onAdd),
            ],
          ],
        ),
      ),
    );
  }
}
