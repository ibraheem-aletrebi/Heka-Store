import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/home/presentation/blocs/categories/categories_bloc.dart';
import 'package:heka_store/Features/home/presentation/components/category/categories_view_body.dart';
import 'package:heka_store/core/di/injector.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/generated/l10n.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          sl<CategoriesBloc>()..add(const CategoriesEvent.loaded()),
      child: Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).Categories),
          bottom: PreferredSize(
            preferredSize: Size(double.infinity, AppSizes.h8),
            child: Divider(),
          ),
        ),

        body: CategoriesViewBody(),
      ),
    );
  }
}
