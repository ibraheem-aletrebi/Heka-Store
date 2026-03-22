import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:heka_store/core/extensions/color_extension.dart';

class CustomSkeletonizer extends StatelessWidget {
  const CustomSkeletonizer({
    super.key,
    required this.enable,
    required this.child,
  });

  final bool enable;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;

    return Skeletonizer(
      enabled: enable,
      effect: ShimmerEffect(
        baseColor: colors.shimmerBase,
        highlightColor: colors.shimmerHighlight,
        duration: const Duration(milliseconds: 1200),
      ),
      child: child,
    );
  }
}