import 'package:flutter/material.dart';

class CenterLineReveal extends StatelessWidget {
  final double progress;
  final Widget child;

  const CenterLineReveal({
    super.key,
    required this.progress,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: LayoutBuilder(
        builder: (_, constraints) {
          final width = constraints.maxWidth;
          final half = width / 2;
          final revealed = half * progress;

          return ShaderMask(
            blendMode: BlendMode.dstIn,
            shaderCallback: (bounds) => LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: const [
                Colors.transparent,
                Colors.white,
                Colors.white,
                Colors.transparent,
              ],
              stops: [
                (half - revealed) / width,
                (half - revealed + 2) / width,
                (half + revealed - 2) / width,
                (half + revealed) / width,
              ],
            ).createShader(bounds),
            child: child,
          );
        },
      ),
    );
  }
}
