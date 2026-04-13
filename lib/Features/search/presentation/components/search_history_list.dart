import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/search/presentation/cubits/search_cubit/search_cubit.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/generated/l10n.dart';

class SearchHistoryList extends StatelessWidget {
  final List<String> history;

  const SearchHistoryList({super.key, required this.history});

  @override
  Widget build(BuildContext context) {
    final s      = S.of(context);
    final colors = context.myColors;
    final theme  = Theme.of(context);

    if (history.isEmpty) {
      return _EmptyHistoryView(s: s, colors: colors, theme: theme);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ── Header ────────────────────────────────────────────────
        Padding(
          padding: EdgeInsets.fromLTRB(
              AppSizes.w16, AppSizes.h16, AppSizes.w16, AppSizes.h4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.history_rounded,
                      size: 18, color: colors.textSecondary),
                  SizedBox(width: AppSizes.w6),
                  Text(s.recentSearches,
                      style: theme.textTheme.titleSmall),
                ],
              ),
              TextButton(
                onPressed: () =>
                    context.read<SearchCubit>().clearHistory(),
                child: Text(s.clearAll,
                    style: TextStyle(color: colors.error)),
              ),
            ],
          ),
        ),

        // ── List ──────────────────────────────────────────────────
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.symmetric(
                horizontal: AppSizes.w8, vertical: AppSizes.h4),
            itemCount: history.length,
            separatorBuilder: (_, __) =>
                Divider(height: 1, color: colors.divider,
                    indent: AppSizes.w56),
            itemBuilder: (context, i) {
              final term = history[i];
              return ListTile(
                contentPadding: EdgeInsets.symmetric(
                    horizontal: AppSizes.w12, vertical: AppSizes.h4),
                leading: Container(
                  width: AppSizes.w36,
                  height: AppSizes.w36,
                  decoration: BoxDecoration(
                    color: colors.primarySoft,
                    borderRadius: BorderRadius.circular(AppSizes.r8),
                  ),
                  child: Icon(Icons.history_rounded,
                      size: 18, color: colors.primary),
                ),
                title: Text(term,
                    style: theme.textTheme.bodyMedium
                        ?.copyWith(color: colors.textPrimary)),
                trailing: IconButton(
                  icon: Icon(Icons.close_rounded,
                      size: 18, color: colors.textHint),
                  tooltip: s.removeItem,
                  onPressed: () => context
                      .read<SearchCubit>()
                      .removeHistoryItem(term),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSizes.r8)),
                onTap: () =>
                    context.read<SearchCubit>().search(term: term),
              );
            },
          ),
        ),

        // ── Tip banner ────────────────────────────────────────────
        Padding(
          padding: EdgeInsets.fromLTRB(AppSizes.w16, AppSizes.h4,
              AppSizes.w16, AppSizes.h16),
          child: Row(
            children: [
              Icon(Icons.tips_and_updates_outlined,
                  size: 14, color: colors.textHint),
              SizedBox(width: AppSizes.w6),
              Text(s.searchTip,
                  style: theme.textTheme.bodySmall),
            ],
          ),
        ),
      ],
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────

class _EmptyHistoryView extends StatelessWidget {
  final S s;
  final MyColors colors;
  final ThemeData theme;

  const _EmptyHistoryView(
      {required this.s, required this.colors, required this.theme});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: AppSizes.w80,
            height: AppSizes.w80,
            decoration: BoxDecoration(
              color: colors.primarySoft,
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.search_rounded,
                size: AppSizes.r35, color: colors.primary),
          ),
          SizedBox(height: AppSizes.h16),
          Text(s.startSearch,
              style: theme.textTheme.titleMedium),
          SizedBox(height: AppSizes.h8),
          Text(s.startSearchSubtitle,
              style: theme.textTheme.bodySmall,
              textAlign: TextAlign.center),
        ],
      ),
    );
  }
}