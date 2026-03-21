import 'package:flutter/material.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_icon_button.dart';


class CartButton extends StatelessWidget {
  const CartButton({super.key, this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return CustomIconButton(
      icon: Icons.add_shopping_cart_rounded,
      onPressed: onPressed,
      backgroundColor: context.myColors.primary,
      borderRadius: AppSizes.r8,
      iconColor: Colors.white,
    );
  }
}
