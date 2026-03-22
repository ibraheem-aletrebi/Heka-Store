import 'package:flutter/material.dart';
import 'package:heka_store/core/resources/app_sizes.dart';

class Stars extends StatelessWidget {
  const Stars({super.key, required this.rating});
  final double rating;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (i) {
        final filled = i < rating.floor();
        final half = !filled && i < rating;
        return Icon(
          half
              ? Icons.star_half_rounded
              : filled
              ? Icons.star_rounded
              : Icons.star_outline_rounded,
          size: AppSizes.sp14,
          color: const Color(0xFFFFC107),
        );
      }),
    );
  }
}
