import 'package:flutter/material.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/utils/format_number.dart';
import 'package:heka_store/core/widgets/stars.dart';
import 'package:heka_store/generated/l10n.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key, required this.rating, required this.reviews});
  final double rating;
  final int reviews;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stars(rating: rating),
        SizedBox(width: AppSizes.w4),
        Flexible(
          child: Text(
            '(${formatNumber(reviews)}) ${S.of(context).reviews}',
            style: TextTheme.of(context).bodySmall,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
