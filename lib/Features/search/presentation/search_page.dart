import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heka_store/Features/home/presentation/blocs/categories/categories_bloc.dart';
import 'package:heka_store/Features/search/presentation/components/filter_bottom_sheet.dart';
import 'package:heka_store/Features/search/presentation/components/search_history_list.dart';
import 'package:heka_store/Features/search/presentation/cubits/search_cubit/search_cubit.dart';
import 'package:heka_store/Features/search/presentation/cubits/search_cubit/search_state.dart';
import 'package:heka_store/core/di/injector.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/product_card/product_card.dart';
import 'package:heka_store/generated/l10n.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();
  Timer? _debounce;

  @override
  void dispose() {
    _debounce?.cancel();
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _onChanged(String value) {
    _debounce?.cancel();
    if (value.trim().isEmpty) {
      context.read<SearchCubit>().showHistory();
      return;
    }
    _debounce = Timer(const Duration(milliseconds: 500), () {
      context.read<SearchCubit>().search(term: value.trim());
    });
  }

  void _onSubmit(String value) {
    _debounce?.cancel();
    if (value.trim().isNotEmpty) {
      context.read<SearchCubit>().search(term: value.trim());
    }
  }

  void _clearSearch() {
    _controller.clear();
    context.read<SearchCubit>().showHistory();
    _focusNode.requestFocus();
  }

  Future<void> _openFilters() async {
    await // Wherever you call showModalBottomSheet:
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => MultiBlocProvider(
        providers: [
          BlocProvider.value(value: context.read<SearchCubit>()),
          BlocProvider(create: (context) => sl<CategoriesBloc>()), // ← add this
        ],
        child: const FilterBottomSheet(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leadingWidth: AppSizes.w48,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () => Navigator.pop(context),
        ),
        title: Container(
          height: AppSizes.h40,
          decoration: BoxDecoration(
            color: colors.surface,
            borderRadius: BorderRadius.circular(AppSizes.r12),
            border: Border.all(color: colors.border),
          ),
          child: Row(
            children: [
              SizedBox(width: AppSizes.w12),
              Icon(Icons.search_rounded, size: 20.r, color: colors.textHint),
              SizedBox(width: AppSizes.w8),
              Expanded(
                child: TextField(
                  controller: _controller,
                  focusNode: _focusNode,
                  autofocus: true,
                  textInputAction: TextInputAction.search,
                  onChanged: _onChanged,
                  onSubmitted: _onSubmit,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: colors.textPrimary,
                  ),
                  decoration: InputDecoration(
                    hintText: s.searchHint,
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    isDense: true,
                    contentPadding: EdgeInsets.zero,
                    hintStyle: theme.textTheme.bodyMedium?.copyWith(
                      color: colors.textHint,
                    ),
                  ),
                ),
              ),
              // Clear button — visible only when text exists
              ValueListenableBuilder<TextEditingValue>(
                valueListenable: _controller,
                builder: (_, val, __) => val.text.isEmpty
                    ? const SizedBox.shrink()
                    : GestureDetector(
                        onTap: _clearSearch,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: AppSizes.w8,
                          ),
                          child: Icon(
                            Icons.close_rounded,
                            size: 18.r,
                            color: colors.textHint,
                          ),
                        ),
                      ),
              ),
            ],
          ),
        ),
        actions: [
          BlocBuilder<SearchCubit, SearchState>(
            builder: (context, state) {
              final cubit = context.read<SearchCubit>();
              final hasFilters = cubit.currentFilter.hasActiveFilters;
              return Padding(
                padding: EdgeInsets.only(right: AppSizes.w8),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.tune_rounded),
                      tooltip: s.filterTooltip,
                      style: IconButton.styleFrom(
                        backgroundColor: hasFilters
                            ? colors.primarySoft
                            : Colors.transparent,
                      ),
                      onPressed: _openFilters,
                    ),
                    if (hasFilters)
                      Positioned(
                        top: 8,
                        right: 8,
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: colors.primary,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) => switch (state) {
          SearchInitial(history: final history) => SearchHistoryList(
            history: history,
          ),
          SearchLoading() => _LoadingView(colors: colors),
          SearchError(message: final msg) => _ErrorView(message: msg),
          SearchSuccess(
            products: final products,
            isEmpty: final isEmpty,
            filter: final filter,
          ) =>
            isEmpty
                ? _EmptyResultsView(filter: filter)
                : _ResultsGrid(products: products),
          _ => const SizedBox.shrink(),
        },
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────

class _LoadingView extends StatelessWidget {
  final MyColors colors;
  const _LoadingView({required this.colors});

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator(color: colors.primary));
  }
}

// ─────────────────────────────────────────────────────────────────────────────

class _ResultsGrid extends StatelessWidget {
  final List products;
  const _ResultsGrid({required this.products});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(
            AppSizes.w16,
            AppSizes.h12,
            AppSizes.w16,
            AppSizes.h8,
          ),
          child: Text(
            s.searchResultsCount(products.length),
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.symmetric(
              horizontal: AppSizes.w16,
              vertical: AppSizes.h8,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.72,
              crossAxisSpacing: AppSizes.w12,
              mainAxisSpacing: AppSizes.h12,
            ),
            itemCount: products.length,
            itemBuilder: (_, i) => ProductCard(productModel: products[i]),
          ),
        ),
      ],
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────

class _EmptyResultsView extends StatelessWidget {
  final dynamic filter;
  const _EmptyResultsView({required this.filter});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;
    final theme = Theme.of(context);

    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.w32),
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
              child: Icon(
                Icons.search_off_rounded,
                size: 36.r,
                color: colors.primary,
              ),
            ),
            SizedBox(height: AppSizes.h16),
            Text(s.noResults, style: theme.textTheme.titleMedium),
            SizedBox(height: AppSizes.h8),
            Text(
              s.noResultsSubtitle,
              style: theme.textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
            if (filter.hasActiveFilters) ...[
              SizedBox(height: AppSizes.h16),
              OutlinedButton.icon(
                onPressed: () => context.read<SearchCubit>().resetFilters(),
                icon: const Icon(Icons.filter_alt_off_rounded, size: 16),
                label: Text(s.removeFilters),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────

class _ErrorView extends StatelessWidget {
  final String message;
  const _ErrorView({required this.message});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;
    final theme = Theme.of(context);

    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.w32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: AppSizes.w80,
              height: AppSizes.w80,
              decoration: BoxDecoration(
                color: colors.error.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.error_outline_rounded,
                size: 36.r,
                color: colors.error,
              ),
            ),
            SizedBox(height: AppSizes.h16),
            Text(s.errorTitle, style: theme.textTheme.titleMedium),
            SizedBox(height: AppSizes.h8),
            Text(
              message,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodySmall,
            ),
            SizedBox(height: AppSizes.h20),
            FilledButton.icon(
              onPressed: () => context.read<SearchCubit>().search(),
              icon: const Icon(Icons.refresh_rounded, size: 18),
              label: Text(s.retry),
            ),
          ],
        ),
      ),
    );
  }
}
