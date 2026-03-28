import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heka_store/Features/product_details/data/models/product_image_model.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';

class ProductImageGallery extends StatelessWidget {
  final List<ProductImageModel> images;
  final int currentIndex;
  final ValueChanged<int> onPageChanged;

  const ProductImageGallery({
    super.key,
    required this.images,
    required this.currentIndex,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    if (images.isEmpty) {
      return Container(
        color: context.myColors.surface,
        child: Icon(
          Icons.image_not_supported_outlined,
          size: 64,
          color: context.myColors.textHint,
        ),
      );
    }

    return Stack(
      children: [
        // ─── Page View ──────────────────────────────
        PageView.builder(
          itemCount: images.length,
          onPageChanged: onPageChanged,
          itemBuilder: (_, index) {
            return CachedNetworkImage(
              imageUrl: images[index].imageUrl,
              fit: BoxFit.cover,
              placeholder: (_, __) => Container(
                color: context.myColors.surface,
                child: const Center(child: CupertinoActivityIndicator()),
              ),
              errorWidget: (_, __, ___) => Container(
                color: context.myColors.surface,
                child: Icon(
                  Icons.broken_image_outlined,
                  size: 48,
                  color: context.myColors.textHint,
                ),
              ),
            );
          },
        ),

        // ─── Dots Indicator ──────────────────────────
        if (images.length > 1)
          Positioned(
            bottom: AppSizes.h16,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(images.length, (index) {
                final isActive = index == currentIndex;
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  margin: EdgeInsets.symmetric(horizontal: AppSizes.w4),
                  width: isActive ? AppSizes.w20 : AppSizes.w6,
                  height: AppSizes.w6,
                  decoration: BoxDecoration(
                    color: isActive
                        ? context.myColors.primary
                        : context.myColors.surface,
                    borderRadius: BorderRadius.circular(3),
                  ),
                );
              }),
            ),
          ),
      ],
    );
  }
}