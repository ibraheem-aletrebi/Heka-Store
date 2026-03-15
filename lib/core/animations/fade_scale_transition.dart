import 'package:flutter/material.dart';

class FadeScaleTransition extends StatelessWidget {
  final Animation<double> fadeAnim;
  final Animation<double> scaleAnim;
  final Widget child;

  const FadeScaleTransition({
    super.key,
    required this.fadeAnim,
    required this.scaleAnim,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: fadeAnim,
      child: ScaleTransition(scale: scaleAnim, child: child),
    );
  }
}
