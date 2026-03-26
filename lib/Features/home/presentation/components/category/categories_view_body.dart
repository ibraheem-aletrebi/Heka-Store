import 'package:flutter/material.dart';
import 'package:heka_store/Features/home/presentation/components/category/categories_view_body_bloc_builder.dart';

class CategoriesViewBody extends StatelessWidget {
  const CategoriesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CategoriesViewBodyBlocBuilder();
  }
}