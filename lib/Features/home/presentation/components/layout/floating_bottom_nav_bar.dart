import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/home/presentation/blocs/main_layout/main_layout_bloc.dart';
import 'package:heka_store/Features/home/presentation/components/layout/nav_icon.dart';

import 'package:heka_store/core/blocs/theme/theme_bloc.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';


class FloatingBottomNavBar extends StatelessWidget {
  const FloatingBottomNavBar({super.key});

  static const _tabs = [
    _NavItem(
      icon: Icons.home_outlined,
      activeIcon: Icons.home_rounded,
      label: 'Home',
    ),
    _NavItem(
      icon: Icons.shopping_bag_outlined,
      activeIcon: Icons.shopping_bag_rounded,
      label: 'Cart',
    ),
    _NavItem(
      icon: Icons.favorite_outline,
      activeIcon: Icons.favorite_rounded,
      label: 'Wishlist',
    ),
    _NavItem(
      icon: Icons.person_outline_rounded,
      activeIcon: Icons.person_rounded,
      label: 'Profile',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainLayoutBloc, MainLayoutState>(
      builder: (context, state) {
        final cubit = context.read<MainLayoutBloc>();
        final isDark = context.watch<ThemeBloc>().state.themeMode == ThemeMode.dark;
        final primary = context.myColors.primary;
        final cartHasItems = state.cartCount > 0;
        final isRtl = Directionality.of(context) == TextDirection.rtl;

        // mirror the selected index for RTL
        // LTR: [0, 1, 2, 3]  →  RTL: [3, 2, 1, 0]
        final visualIndex = isRtl
            ? (_tabs.length - 1 - state.currentIndex)
            : state.currentIndex;

        return SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.w16),
            child: LayoutBuilder(
              builder: (context, constraints) {
                final tabWidth = constraints.maxWidth / _tabs.length;

                return Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(28),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                        child: Container(
                          height: 70,
                          decoration: BoxDecoration(
                            color: context.myColors.surface.withValues(
                              alpha: 0.6,
                            ),
                            borderRadius: BorderRadius.circular(28),
                          ),
                        ),
                      ),
                    ),

                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      left: visualIndex * tabWidth,
                      top: 13,
                      child: Container(
                        width: tabWidth,
                        alignment: Alignment.center,
                        child: Container(
                          width: AppSizes.w45,
                          height: AppSizes.h40,
                          decoration: BoxDecoration(
                            color: primary.withValues(
                              alpha: isDark ? 0.25 : 0.12,
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: AppSizes.h60,
                      child: Row(
                        textDirection: isRtl
                            ? TextDirection.rtl
                            : TextDirection.ltr,
                        children: List.generate(_tabs.length, (i) {
                          final isSelected = state.currentIndex == i;
                          final isCart = i == 1;

                          return Expanded(
                            child: GestureDetector(
                              behavior: HitTestBehavior.opaque,
                              onTap: () {
                                HapticFeedback.lightImpact();
                                cubit.add(MainLayoutEvent.changePage(i));
                              },
                              child: Center(
                                child: NavIcon(
                                  isSelected: isSelected,
                                  icon: isSelected
                                      ? _tabs[i].activeIcon
                                      : _tabs[i].icon,
                                  showBadge: isCart && cartHasItems,
                                  count: state.cartCount,
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}

class _NavItem {
  final IconData icon;
  final IconData activeIcon;
  final String label;

  const _NavItem({
    required this.icon,
    required this.activeIcon,
    required this.label,
  });
}
