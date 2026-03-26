import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:heka_store/Features/home/data/models/category/category.dart';
import 'package:heka_store/Features/home/presentation/components/category/category_card.dart';
import 'package:heka_store/core/app/router/app_routes.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_skeletonizer.dart';

class CategoriesGrid extends StatelessWidget {
  final List<Category> categories;
  final bool isLoadingMore;
  final ScrollController scrollController;

  const CategoriesGrid({
    super.key,
    required this.categories,
    required this.isLoadingMore,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      controller: scrollController,
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.w16,
        vertical: AppSizes.h24,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.85,
      ),
      itemCount: categories.length + (isLoadingMore ? 2 : 0),
      itemBuilder: (context, index) {
        if (index >= categories.length) {
          return CustomSkeletonizer(
            enable: true,
            child: CategoryCard(category: categories[index - 1], onTap: () {}),
          );
        }
        return CategoryCard(
          category: categories[index],
          onTap: () {
            context.push(AppRoutes.subCategories, extra: categories[index]);
          },
        );
      },
    );
  }
}
