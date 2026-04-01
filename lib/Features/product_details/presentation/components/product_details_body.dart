import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:heka_store/Features/product_details/presentation/blocs/product_details/product_details_bloc.dart';
import 'package:heka_store/Features/product_details/presentation/blocs/similar_products/similar_products_bloc.dart';
import 'package:heka_store/Features/product_details/presentation/components/product_add_to_cart_bar.dart';
import 'package:heka_store/Features/product_details/presentation/components/product_image_gallery.dart';
import 'package:heka_store/Features/product_details/presentation/components/product_info_section.dart';
import 'package:heka_store/Features/product_details/presentation/components/product_similar_section.dart';
import 'package:heka_store/Features/product_details/presentation/components/product_variants_section.dart';
import 'package:heka_store/Features/product_details/presentation/components/product_vendor_section.dart';
import 'package:heka_store/core/blocs/language/language_bloc.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_button/custom_button.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductDetailsBloc, ProductDetailsState>(
      listenWhen: (prev, curr) => prev.product == null && curr.product != null,
      listener: (context, state) {
        context.read<SimilarProductsBloc>().add(
          SimilarProductsEvent.started(
            categoryId: state.product!.categoryId,
            excludeProductId: state.product!.id,
          ),
        );
      },
      builder: (context, state) {
        if (state.isLoading) {
          return const Scaffold(
            body: Center(child: CupertinoActivityIndicator()),
          );
        }

        if (state.error != null) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.error_outline_rounded,
                  size: AppSizes.w48,
                  color: context.myColors.error,
                ),
                const SizedBox(height: 12),
                Text(
                  state.error!.failure.message(context),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                CustomButton.outlined(
                  onPressed: () => context.pop(),
                  text: 'Go back',
                ),
              ],
            ),
          );
        }

        if (state.product == null) return const SizedBox.shrink();

        final product = state.product!;
        final langCode = context.read<LanguageBloc>().state.languageCode;

        return Stack(
          children: [
            CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 320,
                  pinned: true,
                  backgroundColor: context.myColors.background,
                  leading: GestureDetector(
                    onTap: () => context.pop(),
                    child: Container(
                      margin: EdgeInsets.all(AppSizes.w8),
                      decoration: BoxDecoration(
                        color: context.myColors.surface,
                        borderRadius: BorderRadius.circular(AppSizes.r12),
                      ),
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: AppSizes.sp18,
                        color: context.myColors.textPrimary,
                      ),
                    ),
                  ),
                  flexibleSpace: FlexibleSpaceBar(
                    background: ProductImageGallery(
                      images: product.images,
                      currentIndex: state.currentImageIndex,
                      onPageChanged: (index) => context
                          .read<ProductDetailsBloc>()
                          .add(ProductDetailsEvent.imagePageChanged(index)),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductInfoSection(
                        product: product,
                        langCode: langCode,
                        state: state, // ✅ added
                      ),
                      _divider(context),
                      if (product.variants.isNotEmpty) ...[
                        ProductVariantsSection(product: product),
                        _divider(context),
                      ],
                      ProductVendorSection(
                        product: product,
                        langCode: langCode,
                      ),
                      _divider(context),
                      ProductSimilarSection(product: product),
                      SizedBox(height: AppSizes.h80 + AppSizes.h24),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: ProductAddToCartBar(product: product, ),
            ),
          ],
        );
      },
    );
  }

  Widget _divider(BuildContext context) => Divider(thickness: 1, height: 1);
}
