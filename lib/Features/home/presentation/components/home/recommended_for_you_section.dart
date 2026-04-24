// recommended_for_you_section.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/home/data/models/product/product_model.dart';
import 'package:heka_store/Features/home/presentation/blocs/recommended_for_you/recommended_for_you_bloc.dart';
import 'package:heka_store/core/extensions/media_query_extensions.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_skeletonizer.dart';
import 'package:heka_store/core/widgets/paginated_list_view.dart';
import 'package:heka_store/core/widgets/product_card/product_card.dart';
import 'package:heka_store/core/widgets/section_header.dart';
import 'package:heka_store/generated/l10n.dart';

class RecommendedForYouSection extends StatelessWidget {
  const RecommendedForYouSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppSizes.h12,
      children: [
        SectionHeader(title: S.of(context).recommendedForYou),
        BlocBuilder<RecommendedForYouBloc, RecommendedForYouState>(
          buildWhen: (p, c) =>
              p.recommendedProducts != c.recommendedProducts ||
              p.isRecommendedLoading != c.isRecommendedLoading ||
              p.isRecommendedLoadingMore != c.isRecommendedLoadingMore,
          builder: (context, state) {
            return SizedBox(
              height: context.height * 0.3,
              child: PaginatedListView<ProductModel>(
                isHorizontal: true,
                itemExtent: context.height * 0.3,
                items: state.recommendedProducts,
                isLoading: state.isRecommendedLoading,
                isLoadingMore: state.isRecommendedLoadingMore,
                hasNextPage: state.hasRecommendedNextPage,
                loadMoreThreshold: 9,

                loadingWidget: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: AppSizes.w16),
                  itemCount: 4,
                  separatorBuilder: (_, __) => SizedBox(width: AppSizes.w12),
                  itemBuilder: (_, __) =>
                      CustomSkeletonizer(enable: true, child: ProductCard()),
                ),

                loadMoreWidget: Padding(
                  padding: EdgeInsetsDirectional.only(end: AppSizes.w12),
                  child: CustomSkeletonizer(enable: true, child: ProductCard()),
                ),

                onLoadMore: () => context.read<RecommendedForYouBloc>().add(
                  const RecommendedForYouEvent.recommendedNextPageFetched(),
                ),
                padding: EdgeInsets.symmetric(horizontal: AppSizes.w16),
                itemBuilder: (context, product, index) =>
                    ProductCard(productModel: product),
              ),
            );
          },
        ),
      ],
    );
  }
}
