import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/product_details/presentation/blocs/similar_products/similar_products_bloc.dart';
import 'package:heka_store/core/blocs/language/language_bloc.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';
import 'package:heka_store/core/widgets/product_card/product_card.dart';

class ProductSimilarSection extends StatelessWidget {
  const ProductSimilarSection({super.key});

  @override
  Widget build(BuildContext context) {
    final langCode = context.read<LanguageBloc>().state.languageCode;

    return BlocBuilder<SimilarProductsBloc, SimilarProductsState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 32),
            child: Center(child: CupertinoActivityIndicator()),
          );
        }

        if (!state.hasProducts) return const SizedBox.shrink();

        final colors = context.myColors;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                  AppSizes.w20, AppSizes.h20, AppSizes.w20, AppSizes.h12),
              child: Text(
                'Similar Products',
                style: AppTextStyles.semiBold16.copyWith(
                  color: colors.textPrimary,
                ),
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: AppSizes.w20),
                itemCount: state.products.length,
                separatorBuilder: (_, __) => SizedBox(width: AppSizes.w12),
                itemBuilder: (_, index) => ProductCard(
                productModel:      state.products[index],
                ),
              ),
            ),
            SizedBox(height: AppSizes.h20),
          ],
        );
      },
    );
  }
}

// class _SimilarProductCard extends StatelessWidget {
//   final ProductDetailsModel product;
//   final String langCode;

//   const _SimilarProductCard({
//     required this.product,
//     required this.langCode,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final colors = context.myColors;
//     final image = product.primaryImage;

//     return GestureDetector(
//       onTap: () => context.push(AppRoutes.productDetailsPath(product.id)),
//       child: Container(
//         width: 140,
//         decoration: BoxDecoration(
//           color: colors.surface,
//           borderRadius: BorderRadius.circular(AppSizes.r16),
//           border: Border.all(color: colors.border),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.vertical(
//                 top: Radius.circular(AppSizes.r16),
//               ),
//               child: image != null
//                   ? CachedNetworkImage(
//                       imageUrl: image.imageUrl,
//                       height: 110,
//                       width: double.infinity,
//                       fit: BoxFit.cover,
//                       errorWidget: (_, __, ___) => Container(
//                         height: 110,
//                         color: colors.background,
//                         child: Icon(Icons.image_outlined, color: colors.textHint),
//                       ),
//                     )
//                   : Container(
//                       height: 110,
//                       color: colors.background,
//                       child: Icon(Icons.image_outlined, color: colors.textHint),
//                     ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(AppSizes.w8),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     product.localizedName(langCode),
//                     style: AppTextStyles.semiBold13.copyWith(
//                       color: colors.textPrimary,
//                     ),
//                     maxLines: 2,
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                   SizedBox(height: AppSizes.h4),
//                   Text(
//                     'EGP ${product.finalPrice.toStringAsFixed(0)}',
//                     style: AppTextStyles.semiBold13.copyWith(
//                       color: colors.primary,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }