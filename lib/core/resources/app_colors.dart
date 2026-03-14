import 'package:flutter/material.dart';

class AppColors {
  final Color primary;
  final Color primaryVariant;
  final Color primarySoft;
  final Color secondary;
  final Color background;
  final Color surface;
  final Color card;
  final Color textPrimary;
  final Color textSecondary;
  final Color textHint;
  final Color textOnPrimary;
  final Color success;
  final Color warning;
  final Color error;
  final Color info;
  final Color border;
  final Color divider;
  final Color navBackground;
  final Color navSelected;
  final Color navUnselected;
  final Color shadow;
  final Color shimmer;
  final Color splashBg;

  const AppColors({
    required this.primary,
    required this.primaryVariant,
    required this.primarySoft,
    required this.secondary,
    required this.background,
    required this.surface,
    required this.card,
    required this.textPrimary,
    required this.textSecondary,
    required this.textHint,
    required this.textOnPrimary,
    required this.success,
    required this.warning,
    required this.error,
    required this.info,
    required this.border,
    required this.divider,
    required this.navBackground,
    required this.navSelected,
    required this.navUnselected,
    required this.shadow,
    required this.shimmer,
    required this.splashBg,
  });

  static const AppColors light = AppColors(
    primary: Color(0xFFF17300),
    primaryVariant: Color(0xFFD65F00),
    primarySoft: Color(0xFFFFF3E8),
    secondary: Color(0xFF7C4A1E),
    background: Color(0xFFFAF8F5),
    surface: Color(0xFFFFFFFF),
    card: Color(0xFFFFFFFF),
    textPrimary: Color(0xFF1C1410),
    textSecondary: Color(0xFF6B5B4E),
    textHint: Color(0xFFB8A99A),
    textOnPrimary: Color(0xFFFFFFFF),
    success: Color(0xFF2E7D32),
    warning: Color(0xFFE65100),
    error: Color(0xFFC62828),
    info: Color(0xFF1565C0),
    border: Color(0xFFEDE8E3),
    divider: Color(0xFFEDE8E3),
    navBackground: Color(0xFFFFFFFF),
    navSelected: Color(0xFFF17300),
    navUnselected: Color(0xFF9E8878),
    shadow: Color(0x1AF17300),
    shimmer: Color(0xFFF17300),
    splashBg: Color(0xFFFFFFFF),
  );

  static const AppColors dark = AppColors(
    primary: Color(0xFFFF8A1A),
    primaryVariant: Color(0xFFF17300),
    primarySoft: Color(0xFF3D2200),
    secondary: Color(0xFFD4A574),
    background: Color(0xFF181818),
    surface: Color(0xFF282828),
    card: Color(0xFF282828),
    textPrimary: Color(0xFFF5F0EB),
    textSecondary: Color(0xFFB8A898),
    textHint: Color(0xFF7A6E65),
    textOnPrimary: Color(0xFF1C1410),
    success: Color(0xFF4CAF50),
    warning: Color(0xFFFF9800),
    error: Color(0xFFEF5350),
    info: Color(0xFF42A5F5),
    border: Color(0xFF282828),
    divider: Color(0xFF282828),
    navBackground: Color(0xFF1E293B),
    navSelected: Color(0xFFFF8A1A),
    navUnselected: Color(0xFF7A8FA6),
    shadow: Color(0x40FF8A1A),
    shimmer: Color(0xFFFF8A1A),
    splashBg: Color(0xFF0F172A),
  );
}
