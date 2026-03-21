import 'package:flutter/material.dart';

/// A reusable widget that cycles through a list of children
/// with a slide-up + fade transition between each one.
///
/// Usage:
/// CyclingSwitcher(
///   duration: const Duration(seconds: 2),
///   children: [
///     Text('Original price'),
///     Text('Discounted price'),
///     FreeShippingBadge(),
///   ],
/// )
class CyclingSwitcher extends StatefulWidget {
  const CyclingSwitcher({
    super.key,
    required this.children,
    this.cycleDuration = const Duration(seconds: 2),
    this.animationDuration = const Duration(milliseconds: 350),
    this.slideOffset = 0.4,
    this.height,
    this.alignment = AlignmentDirectional.centerStart,
  }) : assert(children.length > 0, 'children must not be empty');

  /// The widgets to cycle through.
  final List<Widget> children;

  /// How long each child stays visible before switching.
  final Duration cycleDuration;

  /// Duration of the slide + fade transition.
  final Duration animationDuration;

  /// Vertical offset for the slide (fraction of widget height).
  final double slideOffset;

  /// Fixed height for the switcher container.
  /// If null the height adapts to the current child (may cause layout jumps).
  final double? height;

  /// Alignment of each child inside the container.
  final AlignmentGeometry alignment;

  @override
  State<CyclingSwitcher> createState() => _CyclingSwitcherState();
}

class _CyclingSwitcherState extends State<CyclingSwitcher>
    with SingleTickerProviderStateMixin {
  late AnimationController _ctrl;
  late Animation<double> _fade;
  late Animation<Offset> _slideIn;
  late Animation<Offset> _slideOut;

  int _current = 0;
  bool _leaving = false;

  // Track pending timer so we can cancel on dispose / update
  bool _disposed = false;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      vsync: this,
      duration: widget.animationDuration,
    );
    _buildAnimations();
    _ctrl.forward();
    _scheduleNext();
  }

  void _buildAnimations() {
    _fade = CurvedAnimation(parent: _ctrl, curve: Curves.easeOut);

    _slideIn = Tween<Offset>(
      begin: Offset(0, widget.slideOffset),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _ctrl, curve: Curves.easeOut));

    _slideOut = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(0, -widget.slideOffset),
    ).animate(CurvedAnimation(parent: _ctrl, curve: Curves.easeIn));
  }

  void _scheduleNext() {
    if (widget.children.length < 2) return;
    Future.delayed(widget.cycleDuration, _nextStep);
  }

  Future<void> _nextStep() async {
    if (_disposed || !mounted) return;

    // 1. slide out
    setState(() => _leaving = true);
    await _ctrl.reverse();
    if (_disposed || !mounted) return;

    // 2. swap
    setState(() {
      _current = (_current + 1) % widget.children.length;
      _leaving = false;
    });

    // 3. slide in
    await _ctrl.forward();
    if (_disposed || !mounted) return;

    _scheduleNext();
  }

  @override
  void didUpdateWidget(CyclingSwitcher old) {
    super.didUpdateWidget(old);

    // rebuild animations if offset changed
    if (old.slideOffset != widget.slideOffset) {
      _buildAnimations();
    }

    // reset if children list changed
    if (old.children.length != widget.children.length) {
      _current = 0;
      _leaving = false;
      _ctrl
        ..reset()
        ..forward();
    }
  }

  @override
  void dispose() {
    _disposed = true;
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final slideAnim = _leaving ? _slideOut : _slideIn;
    final fadeAnim = _leaving ? ReverseAnimation(_fade) : _fade;

    Widget content = FadeTransition(
      opacity: fadeAnim,
      child: SlideTransition(
        position: slideAnim,
        child: Align(
          alignment: widget.alignment,
          child: widget.children[_current],
        ),
      ),
    );

    if (widget.height != null) {
      content = SizedBox(
        height: widget.height,
        child: ClipRect(child: content),
      );
    } else {
      content = ClipRect(child: content);
    }

    return content;
  }
}
