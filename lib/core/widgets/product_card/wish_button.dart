import 'package:flutter/material.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';

class WishButton extends StatefulWidget {
  final bool isFavorited;
  final bool isLoading;
  final VoidCallback? onPressed;

  const WishButton({
    super.key,
    required this.isFavorited,
    required this.onPressed,
    this.isLoading = false,
  });

  @override
  State<WishButton> createState() => _WishButtonState();
}

class _WishButtonState extends State<WishButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fillAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    _fillAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.7, curve: Curves.easeInOut),
      ),
    );

    _scaleAnimation =
        TweenSequence([
          TweenSequenceItem(
            tween: Tween<double>(begin: 1.0, end: 1.3),
            weight: 50,
          ),
          TweenSequenceItem(
            tween: Tween<double>(begin: 1.3, end: 1.0),
            weight: 50,
          ),
        ]).animate(
          CurvedAnimation(
            parent: _controller,
            curve: const Interval(0.3, 1.0, curve: Curves.easeOut),
          ),
        );
  }

  @override
  void didUpdateWidget(WishButton oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.isLoading && !widget.isLoading && widget.isFavorited) {
      _controller.forward(from: 0.0);
    }

    if (oldWidget.isLoading && !widget.isLoading && !widget.isFavorited) {
      _controller.reverse(from: 1.0);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;

    return GestureDetector(
      onTap: widget.isLoading ? null : widget.onPressed,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (_, __) {
          return ScaleTransition(
            scale: _scaleAnimation,
            child: Container(
              width: AppSizes.w32,
              height: AppSizes.w32,
              decoration: BoxDecoration(
                color: colors.background,
                shape: BoxShape.circle,
              ),
              child: widget.isLoading
                  ? _LoadingFill(colors: colors)
                  : _HeartIcon(
                      isFavorited: widget.isFavorited,
                      fillProgress: widget.isFavorited
                          ? (_controller.isAnimating
                                ? _fillAnimation.value
                                : 1.0)
                          : 0.0,
                      colors: colors,
                    ),
            ),
          );
        },
      ),
    );
  }
}

class _LoadingFill extends StatefulWidget {
  final dynamic colors;

  const _LoadingFill({required this.colors});

  @override
  State<_LoadingFill> createState() => _LoadingFillState();
}

class _LoadingFillState extends State<_LoadingFill>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fillAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    )..repeat(reverse: true);

    _fillAnimation = Tween<double>(
      begin: 0.2,
      end: 0.8,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _fillAnimation,
      builder: (_, __) => Padding(
        padding: const EdgeInsets.all(6),
        child: CustomPaint(
          painter: _HeartFillPainter(
            fillProgress: _fillAnimation.value,
            filledColor: context.myColors.primary.withValues(alpha: 0.5),
            emptyColor: widget.colors.textHint,
          ),
        ),
      ),
    );
  }
}

class _HeartIcon extends StatelessWidget {
  final bool isFavorited;
  final double fillProgress;
  final dynamic colors;

  const _HeartIcon({
    required this.isFavorited,
    required this.fillProgress,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: CustomPaint(
        painter: _HeartFillPainter(
          fillProgress: fillProgress,
          filledColor: colors.primary,
          emptyColor: colors.textSecondary,
        ),
      ),
    );
  }
}

class _HeartFillPainter extends CustomPainter {
  final double fillProgress;
  final Color filledColor;
  final Color emptyColor;

  const _HeartFillPainter({
    required this.fillProgress,
    required this.filledColor,
    required this.emptyColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final path = _heartPath(size);

    final emptyPaint = Paint()
      ..color = emptyColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    canvas.drawPath(path, emptyPaint);

    if (fillProgress > 0) {
      final fillHeight = size.height * fillProgress;
      final clipRect = Rect.fromLTWH(
        0,
        size.height - fillHeight,
        size.width,
        fillHeight,
      );

      canvas.save();
      canvas.clipRect(clipRect);

      final filledPaint = Paint()
        ..color = filledColor
        ..style = PaintingStyle.fill;

      canvas.drawPath(path, filledPaint);
      canvas.restore();
    }
  }

  Path _heartPath(Size size) {
    final path = Path();
    final w = size.width;
    final h = size.height;

    path.moveTo(w * 0.5, h * 0.85);
    path.cubicTo(w * 0.1, h * 0.6, 0, h * 0.4, w * 0.1, h * 0.25);
    path.cubicTo(w * 0.2, h * 0.1, w * 0.4, h * 0.1, w * 0.5, h * 0.28);
    path.cubicTo(w * 0.6, h * 0.1, w * 0.8, h * 0.1, w * 0.9, h * 0.25);
    path.cubicTo(w, h * 0.4, w * 0.9, h * 0.6, w * 0.5, h * 0.85);
    path.close();

    return path;
  }

  @override
  bool shouldRepaint(_HeartFillPainter oldDelegate) =>
      oldDelegate.fillProgress != fillProgress ||
      oldDelegate.filledColor != filledColor ||
      oldDelegate.emptyColor != emptyColor;
}
