import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/home/presentation/blocs/main_layout/main_layout_bloc.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_icon_button.dart';
import 'package:heka_store/generated/l10n.dart';

class CartAppBar extends StatelessWidget {
  final bool hasItems;
  final VoidCallback onClearAll;

  const CartAppBar({
    super.key,
    required this.hasItems,
    required this.onClearAll,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.w16,
            vertical: AppSizes.h12,
          ),
          child: Row(
            children: [
              CustomIconButton(
                onPressed: () => context
                    .read<MainLayoutBloc>()
                    .add(const MainLayoutEvent.changePage(0)),
                icon: Icons.chevron_left_rounded,
              ),
              SizedBox(width: AppSizes.w12),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    S.of(context).cart,
                    style: textTheme.headlineMedium,
                  ),
                ),
              ),
              if (hasItems)
                CustomIconButton(
                  onPressed: onClearAll,
                  icon: Icons.remove_shopping_cart_rounded,
                )
              else
                // Keep layout balanced when button is hidden
                SizedBox(width: AppSizes.w40),
            ],
          ),
        ),
        const Divider(height: 2),
      ],
    );
  }
}