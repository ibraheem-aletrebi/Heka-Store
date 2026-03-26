import 'package:flutter/material.dart';
import 'package:heka_store/Features/home/data/models/category/category.dart';
import 'package:heka_store/Features/home/presentation/components/category/sub_category_view_body.dart';
import 'package:heka_store/core/resources/app_sizes.dart';

class SubCategoryView extends StatelessWidget {
  const SubCategoryView({super.key, required this.category});
  final Category category;

  @override
  Widget build(BuildContext context) {
    final subs = category.subCategories;
    return Scaffold(
      appBar: AppBar(
        title: Text(category.nameEn),
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, AppSizes.h8),
          child: Divider(),
        ),
      ),
      body: SafeArea(child: SubCategoryViewBody(subs: subs)),
    );
  }
}
