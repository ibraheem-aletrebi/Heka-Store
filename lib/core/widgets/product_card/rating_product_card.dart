import 'package:flutter/material.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/utils/format_number.dart';

class RatingProductCard extends StatelessWidget {
  const RatingProductCard({
    super.key,
    required this.rating,
    required this.reviewsCount,
  });
  final double rating;
  final int reviewsCount;
  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);
    return Row(
      children: [
        Icon(Icons.star_rounded, color: const Color(0xFFFFC107)),
        SizedBox(width: AppSizes.w4),
        Text('$rating', style: textTheme.titleMedium),
        SizedBox(width: AppSizes.w4),
        Text('(${formatNumber(reviewsCount)})', style: textTheme.bodySmall),
      ],
    );
  }
}
