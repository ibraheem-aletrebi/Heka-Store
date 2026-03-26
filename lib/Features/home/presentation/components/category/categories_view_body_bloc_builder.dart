import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/home/presentation/blocs/categories/categories_bloc.dart';
import 'package:heka_store/Features/home/presentation/components/category/categories_error.dart';
import 'package:heka_store/Features/home/presentation/components/category/categories_grid.dart';

class CategoriesViewBodyBlocBuilder extends StatefulWidget {
  const CategoriesViewBodyBlocBuilder({super.key});

  @override
  State<CategoriesViewBodyBlocBuilder> createState() =>
      _CategoriesViewBodyBlocBuilderState();
}

class _CategoriesViewBodyBlocBuilderState
    extends State<CategoriesViewBodyBlocBuilder> {
  final _scrollController = ScrollController();
  @override
  void initState() {
    _scrollController.addListener(_onScroll);
    super.initState();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      context.read<CategoriesBloc>().add(
        const CategoriesEvent.nextPageFetched(),
      );
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesBloc, CategoriesState>(
      builder: (context, state) {
        if (state.isLoading && state.categories.isEmpty) {
          return const Center(child: CupertinoActivityIndicator());
        }

        if (state.error != null && state.categories.isEmpty) {
          return CategoriesError(
            message: state.error!.failure.message(context),
            onRetry: () => context.read<CategoriesBloc>().add(
              const CategoriesEvent.loaded(),
            ),
          );
        }
        return RefreshIndicator(
          onRefresh: () async {
            context.read<CategoriesBloc>().add(
              const CategoriesEvent.reloaded(),
            );
          },
          child: CategoriesGrid(
            categories: state.categories,
            isLoadingMore: state.isLoadingMore,
            scrollController: _scrollController,
          ),
        );
      },
    );
  }
}
