import 'dart:async';
import 'package:flutter/material.dart';

class ResendOtpButton extends StatefulWidget {
  final VoidCallback onResend;
  final int cooldownSeconds;
  final String resendText;
  final bool isLoading;
  final Color? activeColor;
  final Color? disabledColor;

  const ResendOtpButton({
    super.key,
    required this.onResend,
    required this.resendText,
    this.cooldownSeconds = 30,
    this.isLoading = false,
    this.activeColor,
    this.disabledColor,
  });

  @override
  State<ResendOtpButton> createState() => _ResendOtpButtonState();
}

class _ResendOtpButtonState extends State<ResendOtpButton> {
  int _remainingSeconds = 0;
  Timer? _timer;

  // ─── Cooldown ─────────────────────────────────────────────────────────────

  void _startCooldown() {
    setState(() => _remainingSeconds = widget.cooldownSeconds);
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!mounted) {
        timer.cancel();
        return;
      }
      if (_remainingSeconds <= 0) {
        timer.cancel();
        return;
      }
      setState(() => _remainingSeconds--);
    });
  }

  void _onPressed() {
    if (_remainingSeconds > 0 || widget.isLoading) return;
    _startCooldown();       // ← ابدأ الـ cooldown
    widget.onResend();      // ← ابعت الـ request فوراً
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isCoolingDown = _remainingSeconds > 0;
    final isDisabled = isCoolingDown || widget.isLoading;

    return TextButton(
      onPressed: isDisabled ? null : _onPressed,
      child: widget.isLoading
          ? const SizedBox(
              width: 16,
              height: 16,
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          : Text(
              isCoolingDown
                  ? '${widget.resendText} ($_remainingSeconds s)'
                  : widget.resendText,
              style: TextStyle(
                color: isDisabled
                    ? widget.disabledColor
                    : widget.activeColor,
              ),
            ),
    );
  }
}