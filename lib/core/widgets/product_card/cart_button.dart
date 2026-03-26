import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/cart/presentation/blocs/cart/cart_bloc.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_icon_button.dart';

class CartButton extends StatelessWidget {
  final int productId;

  const CartButton({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      buildWhen: (p, c) => p.isItemLoading(productId) != c.isItemLoading(productId),
      builder: (context, state) {
        final isLoading = state.isItemLoading(productId);

        return CustomIconButton(
          icon: Icons.add_shopping_cart_rounded,
          backgroundColor: context.myColors.primary,
          borderRadius: AppSizes.r8,
          iconColor: Colors.white,
          onPressed: isLoading
              ? null
              : () => context.read<CartBloc>().add(
                    CartEvent.itemAdded(productId: productId, quantity: 1),
                  ),
        );
      },
    );
  }
}