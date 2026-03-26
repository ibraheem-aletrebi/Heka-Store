import 'package:flutter/material.dart';
import 'package:heka_store/Features/home/data/models/category/category.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_cached_network_image.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  final VoidCallback onTap;

  const CategoryCard({super.key, required this.category, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppSizes.r16),
        child: Stack(
          fit: StackFit.expand,
          children: [
            CachedImage(url: category.imageUrl, fit: BoxFit.cover),
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withValues(alpha: .85),
                  ],
                  stops: const [0.45, 1.0],
                ),
              ),
            ),
            PositionedDirectional(
              bottom: 12,
              start: 12,
              end: 12,
              child: Text(
                category.nameEn,
                style: TextTheme.of(
                  context,
                ).titleSmall?.copyWith(color: Colors.white),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
