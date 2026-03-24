import 'package:flutter/material.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_icon_button.dart';
import 'package:heka_store/generated/l10n.dart';

class WishlistAppBar extends StatelessWidget {
  const WishlistAppBar({super.key, this.onClearAll, this.onBack});
  final void Function()? onClearAll;
  final void Function()? onBack;
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
                onPressed: onBack,
                icon: Icons.chevron_left_rounded,
              ),
              SizedBox(width: AppSizes.w12),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    S.of(context).favourites,
                    style: textTheme.headlineMedium,
                  ),
                ),
              ),
              CustomIconButton(
                onPressed: onClearAll,
                icon: Icons.cleaning_services_rounded,
              ),
            ],
          ),
        ),
        Divider(height: 2),
      ],
    );
  }
}
