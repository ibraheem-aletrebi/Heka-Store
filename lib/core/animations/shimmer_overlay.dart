
import 'package:flutter/material.dart';
import 'package:heka_store/core/extensions/color_extension.dart';

class ShimmerOverlay extends StatelessWidget {
  final double progress;
  final Widget child;

  const ShimmerOverlay({
    super.key,
    required this.progress,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final colors=context.myColors;
    return ShaderMask(
      blendMode: BlendMode.srcATop,
      shaderCallback: (bounds) {
        final shimmerX = bounds.width * (progress * 2 - 0.5);
        return LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Colors.transparent,
            colors.shimmer,
            Colors.white,
            colors.shimmer,
            Colors.transparent,
          ],
          stops: const [0.0, 0.35, 0.5, 0.65, 1.0],
          transform: _ShimmerTransform(shimmerX),
        ).createShader(bounds);
      },
      child: child,
    );
  }
}

class _ShimmerTransform extends GradientTransform {
  final double translateX;
  const _ShimmerTransform(this.translateX);
  @override
  Matrix4? transform(Rect bounds, {TextDirection? textDirection}) {
    return Matrix4.translationValues(translateX, 0, 0);
  }
}