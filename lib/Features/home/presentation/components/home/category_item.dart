import 'package:flutter/material.dart';
import 'package:heka_store/Features/home/data/models/category/category.dart'; // ✅ Freezed model
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/extensions/media_query_extensions.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_cached_network_image.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, this.onTap, this.category});

  final Category? category;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final c = context.myColors;
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: context.width * 0.17,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: .9,
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: c.surface,
                  borderRadius: BorderRadius.circular(AppSizes.r16),
                ),
                child: CachedImage(url: category?.imageUrl ?? ''), // ✅ imageUrl not .i
              ),
            ),
            SizedBox(height: AppSizes.h6),
            Text(
              category?.nameEn ?? '',
              style: TextTheme.of(context)
                  .bodyMedium
                  ?.copyWith(color: c.textSecondary),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}