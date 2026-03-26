import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/home/data/models/category/category_model.dart';
import 'package:heka_store/Features/home/presentation/blocs/home/home_bloc.dart';
import 'package:heka_store/Features/home/presentation/components/home/category_item.dart';
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
        SectionHeader(title: S.of(context).exploreCategories, onSeeAll: () {}),
        SizedBox(height: AppSizes.h14),
        BlocBuilder<HomeBloc, HomeState>(
          buildWhen: (p, c) =>
              p.categories != c.categories ||
              p.isCategoriesLoading != c.isCategoriesLoading,
          builder: (context, state) {
            return SizedBox(
              height: context.height * 0.15,
              child: PaginatedListView<CategoryModel>(
                isHorizontal: true,
                itemExtent: context.height * 0.15,
                items: state.categories,
                isLoading: state.isFeaturedLoading,
                isLoadingMore: state.isFeaturedLoadingMore,
                loadMoreThreshold: 9,
                loadingWidget: _CategoriesPlaceholderLoading(),
                loadMoreWidget: CustomSkeletonizer(
                  enable: true,
                  child: CategoryItem(),
                ),
                padding: EdgeInsets.symmetric(horizontal: AppSizes.w16),
                itemBuilder: (context, category, index) =>
                    CategoryItem(category: category),
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
          CustomSkeletonizer(enable: true, child: CategoryItem()),
    );
  }
}


