import 'package:flutter/material.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/generated/l10n.dart';
import 'dart:math' as math;

class OrderTimeline extends StatelessWidget {
  final String currentStatus;

  const OrderTimeline({super.key, required this.currentStatus});

  // ── Steps matched exactly to the C# enum (lowercase for comparison) ──────
  static const List<_TimelineStepData> _steps = [
    _TimelineStepData(apiKey: 'pending',    icon: Icons.access_time_filled_rounded),
    _TimelineStepData(apiKey: 'confirmed',  icon: Icons.thumb_up_alt_rounded),
    _TimelineStepData(apiKey: 'processing', icon: Icons.soup_kitchen_rounded),
    _TimelineStepData(apiKey: 'shipped',    icon: Icons.local_shipping_rounded),
    _TimelineStepData(apiKey: 'delivered',  icon: Icons.verified_rounded),
  ];

  // Returned is a separate terminal branch — shown only when status = returned
  static const _TimelineStepData _returnedStep = _TimelineStepData(
    apiKey: 'returned',
    icon: Icons.assignment_return_rounded,
  );

  bool get _isReturned =>
      currentStatus.toLowerCase() == 'returned';

  bool get _isCancelled =>
      currentStatus.toLowerCase() == 'cancelled';

  int get _currentIndex {
    final normalized = currentStatus.toLowerCase();
    return _steps.indexWhere((s) => s.apiKey == normalized);
  }

  String _labelFor(String apiKey, S s) {
    switch (apiKey) {
      case 'pending':    return s.statusPending;
      case 'confirmed':  return s.statusConfirmed;
      case 'processing': return s.statusProcessing;
      case 'shipped':    return s.statusShipped;
      case 'delivered':  return s.statusDelivered;
      case 'cancelled':  return s.statusCancelled;
      case 'returned':   return s.statusReturned;
      default:           return s.statusUnknown;
    }
  }

  Color _colorFor(String apiKey) {
    switch (apiKey) {
      case 'pending':    return const Color(0xFFF59E0B);
      case 'confirmed':  return const Color(0xFF3B82F6);
      case 'processing': return const Color(0xFF8B5CF6);
      case 'shipped':    return const Color(0xFF14B8A6);
      case 'delivered':  return const Color(0xFF22C55E);
      case 'cancelled':  return const Color(0xFFEF4444);
      case 'returned':   return const Color(0xFFF97316);
      default:           return const Color(0xFF9CA3AF);
    }
  }

  static const double _stepLabelHeight  = 44.0;
  static const double _stepActiveExtra  = 28.0;
  static const double _connectorSpacing = 6.0;

  double _rowHeightFor(int i, int activeIdx) {
    final isActive = i == activeIdx;
    final isDone   = i < activeIdx;
    final base = isActive ? _stepLabelHeight + _stepActiveExtra : _stepLabelHeight;
    return isDone ? base + 14.0 : base;
  }

  @override
  Widget build(BuildContext context) {
    final s      = S.of(context);
    final colors = context.myColors;
    final screenWidth = MediaQuery.sizeOf(context).width;
    final isSmall = screenWidth < 360;

    final dotSize  = isSmall ? AppSizes.w28 : AppSizes.w34;
    final dotHeight = isSmall ? AppSizes.h28 : AppSizes.h34;
    final iconSize = isSmall ? AppSizes.sp13 : AppSizes.sp16;
    final colWidth = isSmall ? AppSizes.w36 : AppSizes.w44;
    final ringWidth = isSmall ? 3.0 : AppSizes.w4;

    // ── Returned branch ────────────────────────────────────────────────────
    if (_isReturned) {
      return _ReturnedBranch(
        steps: _steps,
        returnedStep: _returnedStep,
        labelFor: _labelFor,
        colorFor: _colorFor,
        s: s,
        colors: colors,
        dotSize: dotSize,
        dotHeight: dotHeight,
        iconSize: iconSize,
        colWidth: colWidth,
        ringWidth: ringWidth,
      );
    }

    // ── Cancelled state — show greyed timeline with cancelled chip ─────────
    if (_isCancelled) {
      return _CancelledBranch(
        steps: _steps,
        labelFor: _labelFor,
        colorFor: _colorFor,
        s: s,
        colors: colors,
        dotSize: dotSize,
        dotHeight: dotHeight,
        iconSize: iconSize,
        colWidth: colWidth,
        ringWidth: ringWidth,
      );
    }

    // ── Normal forward flow ────────────────────────────────────────────────
    final idx = _currentIndex;

    return Column(
      children: List.generate(_steps.length, (i) {
        final step    = _steps[i];
        final isDone  = i < idx;
        final isActive = i == idx;
        final isLast  = i == _steps.length - 1;
        final stepColor = _colorFor(step.apiKey);

        final connectorHeight = _rowHeightFor(i, idx) - dotHeight;

        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: colWidth,
              child: Column(
                children: [
                  _StepDot(
                    isDone: isDone,
                    isActive: isActive,
                    stepColor: stepColor,
                    icon: step.icon,
                    dotSize: dotSize,
                    dotHeight: dotHeight,
                    iconSize: iconSize,
                    ringWidth: ringWidth,
                    colors: colors,
                  ),
                  if (!isLast)
                    SizedBox(
                      width: 2,
                      height: math.max(connectorHeight + _connectorSpacing, 20.0),
                      child: isDone
                          ? _SolidGradientLine(
                              top: stepColor,
                              bottom: _colorFor(_steps[i + 1].apiKey),
                            )
                          : _DashedLine(
                              color: isActive
                                  ? stepColor.withOpacity(0.4)
                                  : colors.border.withOpacity(0.3),
                            ),
                    ),
                ],
              ),
            ),
            SizedBox(width: AppSizes.w10),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  top: AppSizes.h4,
                  bottom: isLast ? 0 : AppSizes.h8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            _labelFor(step.apiKey, s),
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: isActive
                                  ? FontWeight.w700
                                  : isDone
                                  ? FontWeight.w500
                                  : FontWeight.w400,
                              color: isActive
                                  ? stepColor
                                  : isDone
                                  ? colors.textPrimary
                                  : colors.textHint,
                            ),
                          ),
                        ),
                        if (!isActive && !isDone)
                          _StepNumberBadge(number: i + 1, colors: colors),
                      ],
                    ),
                    if (isActive) ...[
                      SizedBox(height: AppSizes.h6),
                      _ActiveChip(color: stepColor),
                    ],
                    if (isDone) ...[
                      SizedBox(height: AppSizes.h3),
                      _DoneLabel(color: stepColor, s: s),
                    ],
                  ],
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}

// ── Returned branch ───────────────────────────────────────────────────────────
// Shows the full forward timeline (all done up to Delivered) then a
// diverging "Returned" step below with an orange connector.

class _ReturnedBranch extends StatelessWidget {
  final List<_TimelineStepData> steps;
  final _TimelineStepData returnedStep;
  final String Function(String, S) labelFor;
  final Color Function(String) colorFor;
  final S s;
  final dynamic colors;
  final double dotSize, dotHeight, iconSize, colWidth, ringWidth;

  const _ReturnedBranch({
    required this.steps,
    required this.returnedStep,
    required this.labelFor,
    required this.colorFor,
    required this.s,
    required this.colors,
    required this.dotSize,
    required this.dotHeight,
    required this.iconSize,
    required this.colWidth,
    required this.ringWidth,
  });

  @override
  Widget build(BuildContext context) {
    final returnColor = colorFor('returned');

    return Column(
      children: [
        // All normal steps shown as done
        ...List.generate(steps.length, (i) {
          final step      = steps[i];
          final stepColor = colorFor(step.apiKey);
          final isLast    = i == steps.length - 1;

          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: colWidth,
                child: Column(
                  children: [
                    _CheckboxDone(
                      color: stepColor,
                      size: dotSize,
                      height: dotHeight,
                      iconSize: iconSize,
                    ),
                    if (!isLast)
                      SizedBox(
                        width: 2,
                        height: 34,
                        child: _SolidGradientLine(
                          top: stepColor,
                          bottom: colorFor(steps[i + 1].apiKey),
                        ),
                      ),
                    // Last step gets orange connector down to Returned
                    if (isLast)
                      SizedBox(
                        width: 2,
                        height: 34,
                        child: _SolidGradientLine(
                          top: stepColor,
                          bottom: returnColor,
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(width: AppSizes.w10),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: AppSizes.h4, bottom: AppSizes.h8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        labelFor(step.apiKey, s),
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          color: colors.textPrimary,
                        ),
                      ),
                      SizedBox(height: AppSizes.h3),
                      _DoneLabel(color: stepColor, s: s),
                    ],
                  ),
                ),
              ),
            ],
          );
        }),

        // ── Returned step ────────────────────────────────────────────
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: colWidth,
              child: _CheckboxActive(
                color: returnColor,
                size: dotSize,
                height: dotHeight,
                icon: returnedStep.icon,
                iconSize: iconSize,
                ringWidth: ringWidth,
              ),
            ),
            SizedBox(width: AppSizes.w10),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: AppSizes.h4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      labelFor('returned', s),
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: returnColor,
                      ),
                    ),
                    SizedBox(height: AppSizes.h6),
                    _ActiveChip(color: returnColor),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// ── Cancelled branch ──────────────────────────────────────────────────────────

class _CancelledBranch extends StatelessWidget {
  final List<_TimelineStepData> steps;
  final String Function(String, S) labelFor;
  final Color Function(String) colorFor;
  final S s;
  final dynamic colors;
  final double dotSize, dotHeight, iconSize, colWidth, ringWidth;

  const _CancelledBranch({
    required this.steps,
    required this.labelFor,
    required this.colorFor,
    required this.s,
    required this.colors,
    required this.dotSize,
    required this.dotHeight,
    required this.iconSize,
    required this.colWidth,
    required this.ringWidth,
  });

  @override
  Widget build(BuildContext context) {
    final cancelColor = const Color(0xFFEF4444);

    return Column(
      children: [
        // Show all steps greyed out
        ...List.generate(steps.length, (i) {
          final step   = steps[i];
          final isLast = i == steps.length - 1;

          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: colWidth,
                child: Column(
                  children: [
                    _CheckboxPending(
                      size: dotSize,
                      height: dotHeight,
                      colors: colors,
                    ),
                    if (!isLast)
                      SizedBox(
                        width: 2,
                        height: 34,
                        child: _DashedLine(
                          color: colors.border.withOpacity(0.3),
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(width: AppSizes.w10),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: AppSizes.h4, bottom: AppSizes.h8),
                  child: Text(
                    labelFor(step.apiKey, s),
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: colors.textHint,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          );
        }),

        // Cancelled chip at bottom
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: AppSizes.h4),
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.w12,
            vertical: AppSizes.h8,
          ),
          decoration: BoxDecoration(
            color: cancelColor.withOpacity(0.08),
            borderRadius: BorderRadius.circular(AppSizes.r12),
            border: Border.all(color: cancelColor.withOpacity(0.25)),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.cancel_outlined, color: cancelColor, size: AppSizes.sp16),
              SizedBox(width: AppSizes.w8),
              Text(
                labelFor('cancelled', s),
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: cancelColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// ── Step dot (checkbox style) ─────────────────────────────────────────────────

class _StepDot extends StatelessWidget {
  final bool isDone;
  final bool isActive;
  final Color stepColor;
  final IconData icon;
  final double dotSize;
  final double dotHeight;
  final double iconSize;
  final double ringWidth;
  final dynamic colors;

  const _StepDot({
    required this.isDone,
    required this.isActive,
    required this.stepColor,
    required this.icon,
    required this.dotSize,
    required this.dotHeight,
    required this.iconSize,
    required this.ringWidth,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return _CheckboxDone(
        color: stepColor,
        size: dotSize,
        height: dotHeight,
        iconSize: iconSize,
      );
    }
    if (isActive) {
      return _CheckboxActive(
        color: stepColor,
        size: dotSize,
        height: dotHeight,
        icon: icon,
        iconSize: iconSize,
        ringWidth: ringWidth,
      );
    }
    return _CheckboxPending(size: dotSize, height: dotHeight, colors: colors);
  }
}

// ─── Filled checkbox — completed ─────────────────────────────────────────────

class _CheckboxDone extends StatelessWidget {
  final Color color;
  final double size;
  final double height;
  final double iconSize;

  const _CheckboxDone({
    required this.color,
    required this.size,
    required this.height,
    required this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      curve: Curves.easeInOut,
      width: size,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(AppSizes.r8),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.25),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Icon(Icons.check_rounded, size: iconSize, color: Colors.white),
    );
  }
}

// ─── Glowing checkbox — active ────────────────────────────────────────────────

class _CheckboxActive extends StatelessWidget {
  final Color color;
  final double size;
  final double height;
  final IconData icon;
  final double iconSize;
  final double ringWidth;

  const _CheckboxActive({
    required this.color,
    required this.size,
    required this.height,
    required this.icon,
    required this.iconSize,
    required this.ringWidth,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      curve: Curves.easeInOut,
      width: size,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(AppSizes.r8),
        border: Border.all(color: color.withOpacity(0.35), width: ringWidth),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.4),
            blurRadius: 12,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Icon(icon, size: iconSize, color: Colors.white),
    );
  }
}

// ─── Hollow checkbox — pending ────────────────────────────────────────────────

class _CheckboxPending extends StatelessWidget {
  final double size;
  final double height;
  final dynamic colors;

  const _CheckboxPending({
    required this.size,
    required this.height,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      width: size,
      height: height,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(AppSizes.r8),
        border: Border.all(color: colors.border.withOpacity(0.45), width: 1.5),
      ),
    );
  }
}

// ─── Solid gradient connector ─────────────────────────────────────────────────

class _SolidGradientLine extends StatelessWidget {
  final Color top;
  final Color bottom;

  const _SolidGradientLine({required this.top, required this.bottom});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [top.withOpacity(0.7), bottom.withOpacity(0.35)],
        ),
        borderRadius: BorderRadius.circular(AppSizes.r4),
      ),
    );
  }
}

// ─── Dashed connector — NO LayoutBuilder ─────────────────────────────────────

class _DashedLine extends StatelessWidget {
  final Color color;
  const _DashedLine({required this.color});

  @override
  Widget build(BuildContext context) {
    // SizedBox parent already constrains both width and height,
    // so we just fill it with CustomPaint — no LayoutBuilder needed.
    return CustomPaint(painter: _DashedLinePainter(color: color));
  }
}

class _DashedLinePainter extends CustomPainter {
  final Color color;
  _DashedLinePainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    const dashHeight = 5.0;
    const dashSpace = 4.0;
    double startY = 0;

    while (startY < size.height) {
      canvas.drawLine(
        Offset(size.width / 2, startY),
        Offset(size.width / 2, math.min(startY + dashHeight, size.height)),
        paint,
      );
      startY += dashHeight + dashSpace;
    }
  }

  @override
  bool shouldRepaint(_DashedLinePainter old) => old.color != color;
}

// ── Step number badge ─────────────────────────────────────────────────────────

class _StepNumberBadge extends StatelessWidget {
  final int number;
  final dynamic colors;

  const _StepNumberBadge({required this.number, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizes.w18,
      height: AppSizes.h18,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: colors.border.withOpacity(0.15),
      ),
      child: Center(
        child: Text(
          '$number',
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
            fontSize: AppSizes.sp9,
            color: colors.textHint,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

// ── Active chip ───────────────────────────────────────────────────────────────

class _ActiveChip extends StatelessWidget {
  final Color color;
  const _ActiveChip({required this.color});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.w8,
        vertical: AppSizes.h3,
      ),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(AppSizes.r20),
        border: Border.all(color: color.withOpacity(0.25)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _PulseDot(color: color),
          SizedBox(width: AppSizes.w4),
          Text(
            s.currentStatus,
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: color,
              fontWeight: FontWeight.w700,
              fontSize: AppSizes.sp10,
            ),
          ),
        ],
      ),
    );
  }
}

// ── Pulse dot ─────────────────────────────────────────────────────────────────

class _PulseDot extends StatefulWidget {
  final Color color;
  const _PulseDot({required this.color});

  @override
  State<_PulseDot> createState() => _PulseDotState();
}

class _PulseDotState extends State<_PulseDot>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl;
  late final Animation<double> _scale;
  late final Animation<double> _opacity;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    )..repeat(reverse: true);

    _scale = Tween<double>(
      begin: 0.7,
      end: 1.3,
    ).animate(CurvedAnimation(parent: _ctrl, curve: Curves.easeInOut));
    _opacity = Tween<double>(
      begin: 0.5,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _ctrl, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _ctrl,
      builder: (_, __) => Transform.scale(
        scale: _scale.value,
        child: Opacity(
          opacity: _opacity.value,
          child: Container(
            width: AppSizes.w6,
            height: AppSizes.h6,
            decoration: BoxDecoration(
              color: widget.color,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: widget.color.withOpacity(0.5),
                  blurRadius: 4,
                  spreadRadius: 1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ── Done label ────────────────────────────────────────────────────────────────

class _DoneLabel extends StatelessWidget {
  final Color color;
  final S s;
  const _DoneLabel({required this.color, required this.s});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.check_circle_rounded,
          size: AppSizes.sp11,
          color: color.withOpacity(0.65),
        ),
        SizedBox(width: AppSizes.w3),
        Text(
          s.stepCompleted,
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
            color: color.withOpacity(0.65),
            fontSize: AppSizes.sp10,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

// ── Data ──────────────────────────────────────────────────────────────────────

class _TimelineStepData {
  final String apiKey;
  final IconData icon;
  const _TimelineStepData({required this.apiKey, required this.icon});
}
