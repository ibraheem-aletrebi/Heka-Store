import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/product_details/data/models/product_details_model.dart';
import 'package:heka_store/Features/product_details/presentation/blocs/similar_products/similar_products_bloc.dart';
import 'package:heka_store/core/extensions/media_query_extensions.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/product_card/product_card.dart';
import 'package:heka_store/core/widgets/section_header.dart';

class ProductSimilarSection extends StatelessWidget {
  const ProductSimilarSection({super.key, required this.product});
  final ProductDetailsModel product;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarProductsBloc, SimilarProductsState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Center(child: CupertinoActivityIndicator());
        }
        if (!state.hasProducts) return const SizedBox.shrink();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeader(title: 'Similar Products', onSeeAll: () => {}),
            SizedBox(
              height: context.height * 0.3,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: AppSizes.w20),
                itemCount: state.products.length,
                separatorBuilder: (_, _) => SizedBox(width: AppSizes.w12),
                itemBuilder: (_, index) =>
                    ProductCard(productModel: state.products[index]),
              ),
            ),
            SizedBox(height: AppSizes.h20),
          ],
        );
      },
    );
  }
}
