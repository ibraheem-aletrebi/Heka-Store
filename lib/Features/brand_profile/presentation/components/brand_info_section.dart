import 'package:flutter/material.dart';
import 'package:heka_store/Features/brand_profile/data/models/brand_profile_model.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';

class BrandInfoSection extends StatelessWidget {
  final BrandProfileModel? brand;
  const BrandInfoSection({super.key, this.brand});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final textTheme = Theme.of(context).textTheme;
    if (brand == null) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(brand!.storeNameEn, style: textTheme.titleLarge),
            SizedBox(width: AppSizes.w4),
            Icon(Icons.verified_rounded, size: AppSizes.sp16, color: colors.primary),
          ],
        ),
        SizedBox(height: AppSizes.h4),
        Text(brand!.storeNameAr, style: textTheme.bodySmall?.copyWith(color: colors.textSecondary)),
        if (brand!.description != null) ...[
          SizedBox(height: AppSizes.h8),
          Text(brand!.description!, style: textTheme.bodyMedium?.copyWith(color: colors.textSecondary)),
        ],
        SizedBox(height: AppSizes.h12),
        Row(
          children: [
            _StatCard(
              value: brand!.averageRating?.toStringAsFixed(1) ?? '—',
              label: 'Rating',
            ),
            SizedBox(width: AppSizes.w8),
            _StatCard(
              value: '${brand!.totalReviews ?? 0}',
              label: 'Reviews',
            ),
            if (brand!.joinedDate != null) ...[
              SizedBox(width: AppSizes.w8),
              _StatCard(
                value: _formatDate(brand!.joinedDate!),
                label: 'Joined',
              ),
            ],
          ],
        ),
      ],
    );
  }

  String _formatDate(DateTime date) {
    const months = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];
    return '${months[date.month - 1]} ${date.year}';
  }
}

class _StatCard extends StatelessWidget {
  final String value, label;
  const _StatCard({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: AppSizes.h10, horizontal: AppSizes.w8),
        decoration: BoxDecoration(
          color: colors.primarySoft,
          borderRadius: BorderRadius.circular(AppSizes.r10),
        ),
        child: Column(
          children: [
            Text(value, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: colors.textPrimary)),
            SizedBox(height: 2),
            Text(label, style: TextStyle(fontSize: 11, color: colors.textSecondary)),
          ],
        ),
      ),
    );
  }
}