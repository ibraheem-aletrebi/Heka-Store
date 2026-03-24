import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/core/animations/cycling_switcher.dart';
import 'package:heka_store/core/blocs/language/language_bloc.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';
import 'package:heka_store/core/utils/format_price.dart';
import 'package:heka_store/core/widgets/offer_percent_widget.dart';
import 'package:heka_store/core/widgets/product_card/free_shipping_badge.dart';

class WishlistItemPrice extends StatelessWidget {
  const WishlistItemPrice({
    super.key,
    required this.price,
    this.discountPercent,
    this.hasFreeShipping = false,
    this.cycleDuration = const Duration(seconds: 2),
  });

  final double price;
  final double? discountPercent;
  final bool hasFreeShipping;
  final Duration cycleDuration;

  bool get _hasDiscount => discountPercent != null && discountPercent! > 0;

  double get _discountedPrice => price - (price * (discountPercent! / 100));

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final locale = context.read<LanguageBloc>().state.languageCode;

    final cycleItems = <Widget>[
      Text(
        formatEGP(amount: price, locale: locale),
        style: _hasDiscount
            ? AppTextStyles.regular12.copyWith(
                color: colors.textSecondary,
                decoration: TextDecoration.lineThrough,
              )
            : AppTextStyles.semiBold14.copyWith(color: colors.primary),
      ),
      if (_hasDiscount)
        Text(
          formatEGP(amount: _discountedPrice, locale: locale),
          style: AppTextStyles.semiBold14.copyWith(color: colors.primary),
        ),

      if (hasFreeShipping) const FreeShippingBadge(),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (_hasDiscount) ...[
          OfferPercentWidget(percent: discountPercent!),
          SizedBox(height: AppSizes.h4),
        ],

        CyclingSwitcher(
          height: AppSizes.h32,
          cycleDuration: cycleDuration,
          children: cycleItems,
        ),
      ],
    );
  }
}
