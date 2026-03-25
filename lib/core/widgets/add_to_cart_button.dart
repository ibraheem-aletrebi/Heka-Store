import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/cart/presentation/blocs/bloc/cart_bloc.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/generated/l10n.dart';

class AddToCartButton extends StatelessWidget {
  final int productId;
  final int quantity;

  const AddToCartButton({
    super.key,
    required this.productId,
    this.quantity = 1,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;

    return BlocBuilder<CartBloc, CartState>(
      buildWhen: (p, c) =>
          p.isItemLoading(productId) != c.isItemLoading(productId),
      builder: (context, state) {
        final isLoading = state.isItemLoading(productId);

        return GestureDetector(
          onTap: isLoading
              ? null
              : () => context.read<CartBloc>().add(
                  CartEvent.itemAdded(productId: productId, quantity: quantity),
                ),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: EdgeInsets.symmetric(
              horizontal: AppSizes.w12,
              vertical: AppSizes.h8,
            ),
            decoration: BoxDecoration(
              color: isLoading
                  ? colors.primary.withOpacity(0.6)
                  : colors.primary,
              borderRadius: BorderRadius.circular(AppSizes.r8),
            ),
            child: isLoading
                ? SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: Colors.white,
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 5,
                    children: [
                      Text(
                        S.of(context).addToCart,
                        style: TextTheme.of(
                          context,
                        ).titleSmall?.copyWith(color: Colors.white),
                      ),
                      const Icon(Icons.shopping_cart, color: Colors.white),
                    ],
                  ),
          ),
        );
      },
    );
  }
}
