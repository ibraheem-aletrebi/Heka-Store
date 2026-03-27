import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:heka_store/Features/home/data/models/category/category.dart';
import 'package:heka_store/Features/home/presentation/blocs/categories/categories_bloc.dart';
import 'package:heka_store/Features/home/presentation/components/home/category_item.dart';
import 'package:heka_store/core/app/router/app_routes.dart';
import 'package:heka_store/core/extensions/media_query_extensions.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_skeletonizer.dart';
import 'package:heka_store/core/widgets/paginated_list_view.dart';
import 'package:heka_store/core/widgets/section_header.dart';
import 'package:heka_store/generated/l10n.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(
          title: S.of(context).exploreCategories,
          onSeeAll: () {
            context.push(AppRoutes.categories);
          },
        ),
        SizedBox(height: AppSizes.h14),
        BlocBuilder<CategoriesBloc, CategoriesState>(
          buildWhen: (prev, curr) => prev != curr,
          builder: (context, state) {
            final categories = state.categories;

            final isLoading = state.isLoading;

            final isLoadingMore = state.isLoadingMore;

            final hasNextPage = state.hasNextPage;

            return SizedBox(
              height: context.height * 0.119,
              child: PaginatedListView<Category>(
                isHorizontal: true,
                items: categories,
                isLoading: isLoading,
                isLoadingMore: isLoadingMore,
                loadMoreThreshold: 9,
                hasNextPage: hasNextPage,
                onLoadMore: () => context.read<CategoriesBloc>().add(
                  const CategoriesEvent.nextPageFetched(),
                ),
                loadingWidget: const _CategoriesPlaceholderLoading(),
                loadMoreWidget: CustomSkeletonizer(
                  enable: true,
                  child: const CategoryItem(),
                ),
                padding: EdgeInsets.symmetric(horizontal: AppSizes.w16),
                itemBuilder: (context, category, index) => CategoryItem(
                  category: category,
                  onTap: () {
                    context.push(AppRoutes.subCategories, extra: category);
                  },
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class _CategoriesPlaceholderLoading extends StatelessWidget {
  const _CategoriesPlaceholderLoading();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: AppSizes.w16),
      itemCount: 6,
      separatorBuilder: (_, _) => SizedBox(width: AppSizes.w12),
      itemBuilder: (_, _) =>
          CustomSkeletonizer(enable: true, child: const CategoryItem()),
    );
  }
}
