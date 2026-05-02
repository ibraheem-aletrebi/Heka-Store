import 'package:flutter/material.dart';
import 'package:heka_store/Features/home/presentation/components/category/category_card.dart';
import 'package:heka_store/Features/home/presentation/views/category_products_view.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/generated/l10n.dart';

import '../../../data/models/category/category.dart';

class SubCategoryViewBody extends StatelessWidget {
  const SubCategoryViewBody({super.key, required this.subs});
  final List<Category> subs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.w16,
        vertical: AppSizes.h24,
      ),
      child: subs.isEmpty
          ? Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.inbox_outlined,
                    size: 48,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    S.of(context).noSubCategories,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            )
          : GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.85,
              ),
              itemCount: subs.length,
              itemBuilder: (context, index) {
                final category = subs[index];
                return CategoryCard(
                  category: category,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => CategoryProductsView(
                          categoryCode: category.code, // e.g. "C-283802"
                          categoryName: category.nameEn, // shown in AppBar
                        ),
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}
