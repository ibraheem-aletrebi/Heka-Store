import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/cart/presentation/blocs/products_you_may_like/may_like_bloc.dart';
import 'package:heka_store/Features/home/data/models/product/product_model.dart';
import 'package:heka_store/core/extensions/media_query_extensions.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_skeletonizer.dart';
import 'package:heka_store/core/widgets/paginated_list_view.dart';
import 'package:heka_store/core/widgets/product_card/product_card.dart';
import 'package:heka_store/core/widgets/section_header.dart';
import 'package:heka_store/generated/l10n.dart';

class ProductsYouMayLikeSection extends StatelessWidget {
  const ProductsYouMayLikeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppSizes.h12,
      children: [
        SectionHeader(title: S.of(context).itemsYouMayLike),
        BlocBuilder<MayLikeBloc, MayLikeState>(
          buildWhen: (p, c) =>
              p.products != c.products ||
              p.isLoading != c.isLoading ||
              p.isLoadingMore != c.isLoadingMore,
          builder: (context, state) {
            return SizedBox(
              height: context.height * 0.3,
              child: PaginatedListView<ProductModel>(
                isHorizontal: true,
                itemExtent: context.height * 0.3,
                items: state.products,
                isLoading: state.isLoading,
                isLoadingMore: state.isLoadingMore,
                hasNextPage: state.hasNextPage,
                loadMoreThreshold: 9,

                loadingWidget: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: AppSizes.w16),
                  itemCount: 4,
                  separatorBuilder: (_, _) => SizedBox(width: AppSizes.w12),
                  itemBuilder: (_, _) =>
                      CustomSkeletonizer(enable: true, child: ProductCard()),
                ),

                loadMoreWidget: Padding(
                  padding: EdgeInsetsDirectional.only(end: AppSizes.w12),
                  child: CustomSkeletonizer(enable: true, child: ProductCard()),
                ),

                onLoadMore: () => context.read<MayLikeBloc>().add(
                  const MayLikeEvent.nextPageFetched(),
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
