import 'package:flutter/material.dart';
import 'package:heka_store/Features/home/presentation/components/home/brand_tile.dart';
import 'package:heka_store/core/resources/app_sizes.dart';

class BrandItem extends StatelessWidget {
  const BrandItem({super.key, required this.brands});
  final List<Brand> brands;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width - AppSizes.w24,
      child: Column(
        children: List.generate(
          brands.length,
          (index) => Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: BrandTile(brand: brands[index]),
          ),
        ),
      ),
    );
  }
}
