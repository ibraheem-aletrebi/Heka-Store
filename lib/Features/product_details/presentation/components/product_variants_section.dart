import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/product_details/data/models/product_details_model.dart';
import 'package:heka_store/Features/product_details/data/models/product_variant_option_model.dart';
import 'package:heka_store/Features/product_details/presentation/blocs/product_details/product_details_bloc.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';

class ProductVariantsSection extends StatelessWidget {
  final ProductDetailsModel product;

  const ProductVariantsSection({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailsBloc, ProductDetailsState>(
      buildWhen: (prev, curr) => prev.selectedOptions != curr.selectedOptions,
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.all(AppSizes.w16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: product.variants.map((variant) {
              return Padding(
                padding: EdgeInsets.only(bottom: AppSizes.w8),
                child: _VariantRow(
                  typeName: variant.typeName,
                  options: variant.options,
                  selectedOption: state.selectedOptions[variant.typeName],
                  onSelect: (option) =>
                      context.read<ProductDetailsBloc>().add(
                        ProductDetailsEvent.variantOptionSelected(
                          variant.typeName,
                          option,
                        ),
                      ),
                ),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}

class _VariantRow extends StatelessWidget {
  final String typeName;
  final List<ProductVariantOptionModel> options;
  final ProductVariantOptionModel? selectedOption;
  final ValueChanged<ProductVariantOptionModel> onSelect;

  const _VariantRow({
    required this.typeName,
    required this.options,
    required this.selectedOption,
    required this.onSelect,
  });

  bool get _isColorVariant => typeName.toLowerCase() == 'color';

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              typeName,
              style: AppTextStyles.semiBold14.copyWith(
                color: colors.textPrimary,
              ),
            ),
            if (selectedOption != null) ...[
              SizedBox(width: AppSizes.w8),
              Text(
                ': ${selectedOption!.value}',
                style: AppTextStyles.regular14.copyWith(
                  color: colors.textSecondary,
                ),
              ),
              if (selectedOption!.priceAdjustment > 0) ...[
                SizedBox(width: AppSizes.w4),
                Text(
                  '+EGP ${selectedOption!.priceAdjustment.toStringAsFixed(0)}',
                  style: AppTextStyles.regular12.copyWith(
                    color: colors.primary,
                  ),
                ),
              ],
            ],
          ],
        ),
        SizedBox(height: AppSizes.h8),
        Wrap(
          spacing: AppSizes.w8,
          runSpacing: AppSizes.h4,
          children: options.map((option) {
            final isSelected = selectedOption?.id == option.id;
            final isOutOfStock = option.stockQuantity == 0;

            if (_isColorVariant && option.colorHex.isNotEmpty) {
              return _ColorChip(
                option: option,
                isSelected: isSelected,
                isOutOfStock: isOutOfStock,
                // لو out of stock → onTap = null (مش قابل للضغط)
                onTap: isOutOfStock ? null : () => onSelect(option),
              );
            }

            return _TextChip(
              option: option,
              isSelected: isSelected,
              isOutOfStock: isOutOfStock,
              onTap: isOutOfStock ? null : () => onSelect(option),
            );
          }).toList(),
        ),
      ],
    );
  }
}

class _ColorChip extends StatelessWidget {
  final ProductVariantOptionModel option;
  final bool isSelected;
  final bool isOutOfStock;
  final VoidCallback? onTap;

  const _ColorChip({
    required this.option,
    required this.isSelected,
    required this.isOutOfStock,
    required this.onTap,
  });

  Color get _parsedColor {
    try {
      return Color(int.parse(option.colorHex.replaceFirst('#', '0xFF')));
    } catch (_) {
      return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;

    return GestureDetector(
      onTap: onTap,
      child: Opacity(
        // out of stock → opacity منخفضة جداً توضح إنه مش متاح
        opacity: isOutOfStock ? 0.35 : 1.0,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          width: AppSizes.w38,
          height: AppSizes.w38,
          decoration: BoxDecoration(
            color: _parsedColor,
            shape: BoxShape.circle,
            border: Border.all(
              color: isSelected ? colors.primary : colors.border,
              width: isSelected ? 3 : 1.5,
            ),
          ),
          child: isSelected
              ? const Icon(Icons.check_rounded, size: 16, color: Colors.white)
              : isOutOfStock
                  // ✕ علامة واضحة إن الكولور ده out of stock
                  ? Icon(
                      Icons.close_rounded,
                      size: 14,
                      color: Colors.white.withValues(alpha: 0.9),
                    )
                  : null,
        ),
      ),
    );
  }
}

class _TextChip extends StatelessWidget {
  final ProductVariantOptionModel option;
  final bool isSelected;
  final bool isOutOfStock;
  final VoidCallback? onTap;

  const _TextChip({
    required this.option,
    required this.isSelected,
    required this.isOutOfStock,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;

    return GestureDetector(
      onTap: onTap,
      child: Opacity(
        opacity: isOutOfStock ? 0.45 : 1.0,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.w16,
            vertical: AppSizes.h8,
          ),
          decoration: BoxDecoration(
            color: isSelected ? colors.primary : colors.surface,
            border: Border.all(
              color: isSelected ? colors.primary : colors.border,
            ),
            borderRadius: BorderRadius.circular(AppSizes.r20),
          ),
          child: Text(
            option.value,
            style: AppTextStyles.regular13.copyWith(
              color: isSelected
                  ? Colors.white
                  : isOutOfStock
                      ? colors.textHint
                      : colors.textSecondary,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
              // strikethrough على الـ text لو out of stock
              decoration: isOutOfStock
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
              decorationColor: colors.textHint,
            ),
          ),
        ),
      ),
    );
  }
}