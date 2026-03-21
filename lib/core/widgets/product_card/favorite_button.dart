import 'package:flutter/material.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/widgets/custom_icon_button.dart';


class FavoriteButton extends StatelessWidget {
  const FavoriteButton({super.key, this.onPressed, required this.isFavorited});

  final void Function()? onPressed;
  final bool isFavorited;
  @override
  Widget build(BuildContext context) {
    final colors=context.myColors;
    return CustomIconButton(
      backgroundColor: colors.surface.withValues(alpha: .1),
      icon: Icons.favorite_rounded,
      onPressed: onPressed,
      iconColor: isFavorited ? colors.primary : null,
    );
  }
}
