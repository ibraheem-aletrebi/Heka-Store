import 'package:flutter/material.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';

class AppSearchBar extends StatelessWidget {
  final String hint;
  final EdgeInsetsGeometry? margin;

  const AppSearchBar({
    super.key,
    this.hint = 'Search products, brands…',
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final textTheme = TextTheme.of(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            transitionDuration: const Duration(milliseconds: 500),
            reverseTransitionDuration: const Duration(milliseconds: 500),
            pageBuilder: (_, __, ___) {
              //// TODO: add search page
              return const Placeholder();
            },
            transitionsBuilder: (_, anim, __, child) => FadeTransition(
              opacity: CurvedAnimation(parent: anim, curve: Curves.easeOut),
              child: child,
            ),
          ),
        );
      },
      child: Hero(
        tag: 'search_bar',
        child: Container(
          margin:
              margin ??
              EdgeInsets.symmetric(
                horizontal: AppSizes.w16,
                vertical: AppSizes.h6,
              ),
          height: AppSizes.h48,
          decoration: BoxDecoration(
            color: colors.surface,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: colors.border, width: 1.5),
          ),
          child: Row(
            children: [
              const SizedBox(width: 14),
              Icon(Icons.search_rounded, size: AppSizes.sp20),
              const SizedBox(width: 10),
              Expanded(child: Text(hint, style: textTheme.bodyMedium)),
              VerticalDivider(
                thickness: 1,
                indent: AppSizes.w4,
                endIndent: AppSizes.w4,
                width: AppSizes.w10,
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(end: AppSizes.w14),
                child: Icon(Icons.tune_rounded, size: AppSizes.sp20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
