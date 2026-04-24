import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/home/data/models/product/product_model.dart';
import 'package:heka_store/Features/home/presentation/blocs/home/home_bloc.dart';
import 'package:heka_store/core/extensions/media_query_extensions.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_skeletonizer.dart';
import 'package:heka_store/core/widgets/paginated_list_view.dart';
import 'package:heka_store/core/widgets/product_card/product_card.dart';
import 'package:heka_store/core/widgets/section_header.dart';
import 'package:heka_store/generated/l10n.dart';

class FeaturedSection extends StatelessWidget {
  const FeaturedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppSizes.h12,
      children: [
        SectionHeader(title: S.of(context).featuredBrands),
        BlocBuilder<HomeBloc, HomeState>(
          buildWhen: (p, c) =>
              p.featuredProducts != c.featuredProducts ||
              p.isFeaturedLoading != c.isFeaturedLoading ||
              p.isFeaturedLoadingMore != c.isFeaturedLoadingMore,
          builder: (context, state) {
            return SizedBox(
              height: context.height * 0.3,
              child: PaginatedListView<ProductModel>(
                isHorizontal: true,
                itemExtent: context.height * 0.3,
                items: state.featuredProducts,
                isLoading: state.isFeaturedLoading,
                isLoadingMore: state.isFeaturedLoadingMore,
                hasNextPage: state.hasFeaturedNextPage,
                loadMoreThreshold: 9,

                // ─── Loading Widget ───────────────────
                loadingWidget: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: AppSizes.w16),
                  itemCount: 4,
                  separatorBuilder: (_, __) => SizedBox(width: AppSizes.w12),
                  itemBuilder: (_, __) =>
                      CustomSkeletonizer(enable: true, child: ProductCard()),
                ),

                // ─── Load More Widget ─────────────────
                loadMoreWidget: Padding(
                  padding: EdgeInsets.only(right: AppSizes.w12),
                  child: CustomSkeletonizer(enable: true, child: ProductCard()),
                ),

                onLoadMore: () => context.read<HomeBloc>().add(
                  const HomeEvent.featuredNextPageFetched(),
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
