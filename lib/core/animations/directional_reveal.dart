import 'package:flutter/material.dart';

class DirectionalReveal extends StatelessWidget {
  final double progress;
  final bool isRtl;
  final Widget child;

  const DirectionalReveal({
    super.key,
    required this.progress,
    required this.child,
    this.isRtl = false,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Align(
        alignment: isRtl ? Alignment.centerRight : Alignment.centerLeft,
        widthFactor: progress,
        child: child,
      ),
    );
  }
}
