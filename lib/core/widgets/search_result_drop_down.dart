import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';

typedef ResultItemBuilder<T> = Widget Function(
  BuildContext context,
  T item,
  VoidCallback onTap,
);

class SearchResultsDropdown<T> extends StatelessWidget {
  final List<T> results;
  final bool isLoading;
  final bool isVisible;
  final String emptyMessage;
  final ResultItemBuilder<T> itemBuilder;
  final void Function(T item)? onItemTap; 
  final double maxHeight;
  final bool showEmptyResults;
  final EdgeInsets? margin;
  final BorderRadius? borderRadius;
  final Color? backgroundColor;

  const SearchResultsDropdown({
    super.key,
    required this.results,
    required this.isLoading,
    required this.isVisible,
    required this.emptyMessage,
    required this.itemBuilder,
    this.onItemTap,
    this.maxHeight = 260,
    this.showEmptyResults = true,
    this.margin,
    this.borderRadius,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    if (!isVisible) return const SizedBox.shrink();

    final colors = context.myColors;

    return Container(
      margin: margin ?? EdgeInsets.only(top: AppSizes.h6),
      constraints: BoxConstraints(maxHeight: maxHeight),
      decoration: BoxDecoration(
        color: backgroundColor ?? colors.surface,
        borderRadius: borderRadius ?? BorderRadius.circular(AppSizes.r14),
        boxShadow: [
          BoxShadow(
            color: colors.shadow,
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.circular(AppSizes.r14),
        child: _buildContent(context, colors),
      ),
    );
  }

  Widget _buildContent(BuildContext context, dynamic colors) {
    if (isLoading) {
      return Padding(
        padding: EdgeInsets.all(AppSizes.w20),
        child: Center(
          child: CupertinoActivityIndicator(
               color: colors.primary,
          ),
        ),
      );
    }

    if (results.isEmpty) {
      if (!showEmptyResults) return const SizedBox.shrink();
      return Padding(
        padding: EdgeInsets.all(AppSizes.w20),
        child: Center(
          child: Text(
            emptyMessage,
            style: AppTextStyles.regular14.copyWith(color: colors.textHint),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    return ListView.separated(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(vertical: AppSizes.h6),
      itemCount: results.length,
      separatorBuilder: (_, _) => Divider(
        height: 1,
        indent: AppSizes.w16,
        endIndent: AppSizes.w16,
        color: colors.divider,
      ),
      itemBuilder: (ctx, i) => itemBuilder(
        ctx,
        results[i],
        () => onItemTap?.call(results[i]), 
      ),
    );
  }
}