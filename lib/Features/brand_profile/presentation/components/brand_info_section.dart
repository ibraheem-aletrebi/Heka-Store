import 'package:flutter/material.dart';
import 'package:heka_store/Features/brand_profile/data/models/brand_profile_model.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/generated/l10n.dart';

class BrandInfoSection extends StatelessWidget {
  final BrandProfileModel? brand;
  const BrandInfoSection({super.key, this.brand});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final textTheme = Theme.of(context).textTheme;
    final s = S.of(context);
    final isArabic = Localizations.localeOf(context).languageCode == 'ar';

    if (brand == null) return const SizedBox.shrink();

    final storeName = isArabic ? brand!.storeNameAr : brand!.storeNameEn;
    final storeSubtitle = isArabic ? brand!.storeNameEn : brand!.storeNameAr;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ── Store name + verified badge ──────────────────────────────────
        Row(
          children: [
            Flexible(
              child: Text(
                storeName,
                style: textTheme.titleLarge,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(width: AppSizes.w4),
            Icon(
              Icons.verified_rounded,
              size: AppSizes.sp16,
              color: colors.primary,
            ),
          ],
        ),
        SizedBox(height: AppSizes.h4),

        // ── Subtitle (opposite locale name) ─────────────────────────────
        Text(
          storeSubtitle,
          style: textTheme.bodySmall?.copyWith(color: colors.textSecondary),
        ),

        // ── Description ──────────────────────────────────────────────────
        if (brand!.description != null) ...[
          SizedBox(height: AppSizes.h8),
          Text(
            brand!.description!,
            style: textTheme.bodyMedium?.copyWith(color: colors.textSecondary),
          ),
        ],
        SizedBox(height: AppSizes.h12),

        // ── Stat cards ───────────────────────────────────────────────────
        Row(
          children: [
            _StatCard(
              value: brand!.averageRating?.toStringAsFixed(1) ?? '—',
              label: s.rating,
            ),
            SizedBox(width: AppSizes.w8),
            _StatCard(
              value: '${brand!.totalReviews ?? 0}',
              label: s.reviews(brand!.totalReviews ?? 0),
            ),
            if (brand!.joinedDate != null) ...[
              SizedBox(width: AppSizes.w8),
              _StatCard(
                value: _formatDate(brand!.joinedDate!),
                label: s.joined,
              ),
            ],
          ],
        ),
      ],
    );
  }

  String _formatDate(DateTime date) {
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];
    return '${months[date.month - 1]} ${date.year}';
  }
}

class _StatCard extends StatelessWidget {
  final String value, label;
  const _StatCard({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final textTheme = Theme.of(context).textTheme;

    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: AppSizes.h10,
          horizontal: AppSizes.w8,
        ),
        decoration: BoxDecoration(
          color: colors.primarySoft,
          borderRadius: BorderRadius.circular(AppSizes.r10),
        ),
        child: Column(
          children: [
            Text(
              value,
              style: textTheme.titleSmall?.copyWith(color: colors.textPrimary),
            ),
            SizedBox(height: AppSizes.h2),
            Text(
              label,
              style: textTheme.labelSmall?.copyWith(
                color: colors.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
