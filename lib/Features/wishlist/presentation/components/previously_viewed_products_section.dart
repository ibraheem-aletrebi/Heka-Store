import 'package:flutter/material.dart';
import 'package:heka_store/Features/home/data/models/product/product_model.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/product_card/product_card.dart';
import 'package:heka_store/core/widgets/section_header.dart';
import 'package:heka_store/generated/l10n.dart';

class PreviouslyViewedProductsSection extends StatelessWidget {
  const PreviouslyViewedProductsSection({super.key, required this.products});
  final List<ProductModel> products ;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppSizes.h16,
      children: [
        SectionHeader(title: S.of(context).previouslyViewedItem),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.35,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.w12),
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: products.length,
            separatorBuilder: (_, _) => SizedBox(width: AppSizes.w10),
            itemBuilder: (_, i) => ProductCard(productModel: products[i],),
          ),
        ),
      ],
    );
  }
}
