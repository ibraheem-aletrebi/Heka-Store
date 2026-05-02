import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:heka_store/Features/home/domain/repos/home_repo.dart';
import 'package:heka_store/Features/home/presentation/blocs/category_product/category_product_cubit.dart';
import 'package:heka_store/Features/home/presentation/components/category/category_products_view_body.dart';


class CategoryProductsView extends StatelessWidget {
  const CategoryProductsView({
    super.key,
    required this.categoryCode,
    required this.categoryName,
  });

  final String categoryCode;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CategoryProductsCubit(GetIt.I<HomeRepo>()),
      child: Scaffold(
        appBar: AppBar(
          title: Text(categoryName),
          centerTitle: true,
        ),
        body: CategoryProductsViewBody(categoryCode: categoryCode),
      ),
    );
  }
}