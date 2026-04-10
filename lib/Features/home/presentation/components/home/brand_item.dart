import 'package:flutter/material.dart';
import 'package:heka_store/Features/home/data/models/brand/brand_model.dart';
import 'package:heka_store/Features/home/presentation/components/home/brand_tile.dart';
import 'package:heka_store/core/resources/app_sizes.dart';

class BrandItem extends StatelessWidget {
  const BrandItem({super.key, required this.brands});
  final List<BrandModel> brands;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width - AppSizes.w24,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: AppSizes.h8,
        children: List.generate(
          brands.length,
          (index) => BrandTile(brand: brands[index]),
        ),
      ),
    );
  }
}
