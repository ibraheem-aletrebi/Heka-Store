import 'package:flutter/material.dart';

class OrderStatusBadge extends StatelessWidget {
  final String status;
  const OrderStatusBadge({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    final cfg = _cfg(status);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 4),
      decoration: BoxDecoration(
        color: cfg.$1,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        status,
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w600,
          color: cfg.$2,
        ),
      ),
    );
  }

  (Color, Color) _cfg(String s) {
    switch (s.toLowerCase()) {
      case 'pending':
        return (const Color(0xFFFAEEDA), const Color(0xFF633806));
      case 'processing':
        return (const Color(0xFFE6F1FB), const Color(0xFF0C447C));
      case 'shipped':
        return (const Color(0xFFEEEDFE), const Color(0xFF3C3489));
      case 'delivered':
        return (const Color(0xFFEAF3DE), const Color(0xFF27500A));
      case 'cancelled':
        return (const Color(0xFFFCEBEB), const Color(0xFF791F1F));
      default:
        return (const Color(0xFFF1EFE8), const Color(0xFF5F5E5A));
    }
  }
}
