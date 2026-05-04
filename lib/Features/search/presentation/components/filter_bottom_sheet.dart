import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/home/presentation/blocs/categories/categories_bloc.dart';
import 'package:heka_store/Features/search/presentation/cubits/search_cubit/search_cubit.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/generated/l10n.dart';
import '../../domain/entities/search_filter.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  late SearchFilter _filter;
  final _minController = TextEditingController();
  final _maxController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _filter = context.read<SearchCubit>().currentFilter;
    _minController.text = _filter.minPrice?.toStringAsFixed(0) ?? '';
    _maxController.text = _filter.maxPrice?.toStringAsFixed(0) ?? '';

    final categoriesState = context.read<CategoriesBloc>().state;
    if (!categoriesState.isLoading && categoriesState.categories.isEmpty) {
      context.read<CategoriesBloc>().add(const CategoriesEvent.loaded());
    }
  }

  @override
  void dispose() {
    _minController.dispose();
    _maxController.dispose();
    super.dispose();
  }

  int get _activeFilterCount {
    int count = 0;
    if (_filter.categoryId != null) count++;
    if (_filter.minPrice != null || _filter.maxPrice != null) count++;
    if (_filter.isEgyptianMade != null) count++;
    return count;
  }

  void _apply() {
    final min = double.tryParse(_minController.text);
    final max = double.tryParse(_maxController.text);
    context.read<SearchCubit>().applyFilter(
      _filter.copyWith(minPrice: min, maxPrice: max, pageNumber: 1),
    );
    Navigator.pop(context);
  }

  void _reset() {
    context.read<SearchCubit>().resetFilters();
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;
    final theme = Theme.of(context);

    return DraggableScrollableSheet(
      initialChildSize: 0.70,
      minChildSize: 0.45,
      maxChildSize: 0.95,
      expand: false,
      builder: (_, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: colors.surface,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(AppSizes.r24),
            ),
          ),
          child: Column(
            children: [
              // ── Handle ──────────────────────────────────────────
              Padding(
                padding: EdgeInsets.only(top: AppSizes.h12),
                child: Center(
                  child: Container(
                    width: AppSizes.w40,
                    height: AppSizes.h4,
                    decoration: BoxDecoration(
                      color: colors.divider,
                      borderRadius: BorderRadius.circular(AppSizes.r4),
                    ),
                  ),
                ),
              ),
              // ── Header ──────────────────────────────────────────
              Padding(
                padding: EdgeInsets.fromLTRB(
                  AppSizes.w20,
                  AppSizes.h12,
                  AppSizes.w12,
                  AppSizes.h8,
                ),
                child: Row(
                  children: [
                    Text(s.filterTitle, style: theme.textTheme.titleLarge),
                    SizedBox(width: AppSizes.w8),
                    if (_activeFilterCount > 0)
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSizes.w8,
                          vertical: AppSizes.h2,
                        ),
                        decoration: BoxDecoration(
                          color: colors.primary,
                          borderRadius: BorderRadius.circular(AppSizes.r50),
                        ),
                        child: Text(
                          '$_activeFilterCount',
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: colors.textOnPrimary,
                          ),
                        ),
                      ),
                    const Spacer(),
                    TextButton.icon(
                      onPressed: _activeFilterCount > 0 ? _reset : null,
                      icon: const Icon(Icons.restart_alt_rounded, size: 16),
                      label: Text(s.filterReset),
                      style: TextButton.styleFrom(
                        foregroundColor: colors.error,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(height: 1, color: colors.divider),
              // ── Scrollable body ──────────────────────────────────
              Expanded(
                child: ListView(
                  controller: scrollController,
                  padding: EdgeInsets.all(AppSizes.w20),
                  children: [
                    // ── Categories ─────────────────────────────────
                    _SectionLabel(label: s.filterCategory),
                    SizedBox(height: AppSizes.h10),
                    BlocBuilder<CategoriesBloc, CategoriesState>(
                      builder: (context, categoriesState) {
                        if (categoriesState.isLoading) {
                          return SizedBox(
                            height: AppSizes.h40,
                            child: Center(
                              child: SizedBox(
                                width: AppSizes.w20,
                                height: AppSizes.h20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: colors.primary,
                                ),
                              ),
                            ),
                          );
                        }

                        if (categoriesState.error != null &&
                            categoriesState.categories.isEmpty) {
                          return Row(
                            children: [
                              Icon(
                                Icons.error_outline,
                                size: 16,
                                color: colors.error,
                              ),
                              SizedBox(width: AppSizes.w8),
                              Text(
                                s.errorLoadingCategories,
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: colors.error,
                                ),
                              ),
                              const Spacer(),
                              TextButton(
                                onPressed: () => context
                                    .read<CategoriesBloc>()
                                    .add(const CategoriesEvent.reloaded()),
                                child: Text(s.retry),
                              ),
                            ],
                          );
                        }

                        if (categoriesState.categories.isEmpty) {
                          return Text(
                            s.noCategoriesAvailable,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: colors.textHint,
                            ),
                          );
                        }

                        return Wrap(
                          spacing: AppSizes.w8,
                          runSpacing: AppSizes.h8,
                          children: [
                            ...categoriesState.categories.map((cat) {
                              final selected = _filter.categoryId == cat.id;
                              return _FilterChip(
                                label: cat.nameEn,
                                selected: selected,
                                colors: colors,
                                onTap: () => setState(
                                  () => _filter = selected
                                      ? _filter.copyWith(clearCategory: true)
                                      : _filter.copyWith(categoryId: cat.id),
                                ),
                              );
                            }),
                            if (categoriesState.isLoadingMore)
                              SizedBox(
                                width: AppSizes.w20,
                                height: AppSizes.h20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: colors.primary,
                                ),
                              ),
                          ],
                        );
                      },
                    ),
                    SizedBox(height: AppSizes.h24),
                    // ── Price range ────────────────────────────────
                    _SectionLabel(label: s.filterPriceRange),
                    SizedBox(height: AppSizes.h10),
                    _PriceRangeWidget(
                      initialMin: _filter.minPrice,
                      initialMax: _filter.maxPrice,
                      minController: _minController,
                      maxController: _maxController,
                      colors: colors,
                      onChanged: (min, max) {
                        _minController.text = min?.toStringAsFixed(0) ?? '';
                        _maxController.text = max?.toStringAsFixed(0) ?? '';
                      },
                    ),
                    SizedBox(height: AppSizes.h24),
                    // ── Origin ─────────────────────────────────────
                    _SectionLabel(label: s.filterOrigin),

                    SizedBox(height: AppSizes.h32),
                  ],
                ),
              ),
              // ── Footer ──────────────────────────────────────────
              Container(
                decoration: BoxDecoration(
                  color: colors.surface,
                  border: Border(top: BorderSide(color: colors.divider)),
                ),
                child: SafeArea(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                      AppSizes.w20,
                      AppSizes.h12,
                      AppSizes.w20,
                      AppSizes.h16,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text(s.cancel),
                          ),
                        ),
                        SizedBox(width: AppSizes.w12),
                        Expanded(
                          flex: 2,
                          child: FilledButton.icon(
                            onPressed: _apply,
                            icon: const Icon(Icons.check_rounded, size: 18),
                            label: Text(
                              _activeFilterCount > 0
                                  ? s.applyFilterCount(_activeFilterCount)
                                  : s.applyFilter,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Price Range Widget
// ─────────────────────────────────────────────────────────────────────────────

class _PriceRangeWidget extends StatefulWidget {
  final double? initialMin;
  final double? initialMax;
  final TextEditingController minController;
  final TextEditingController maxController;
  final MyColors colors;
  final void Function(double? min, double? max) onChanged;

  const _PriceRangeWidget({
    required this.initialMin,
    required this.initialMax,
    required this.minController,
    required this.maxController,
    required this.colors,
    required this.onChanged,
  });

  @override
  State<_PriceRangeWidget> createState() => _PriceRangeWidgetState();
}

class _PriceRangeWidgetState extends State<_PriceRangeWidget> {
  static const double _minBound = 0;
  static const double _maxBound = 10000;

  static const _presets = [
    (label: 'Under 500', min: 0.0, max: 500.0),
    (label: '500 – 1,500', min: 500.0, max: 1500.0),
    (label: '1,500 – 4,000', min: 1500.0, max: 4000.0),
    (label: '4,000+', min: 4000.0, max: 10000.0),
  ];

  late RangeValues _range;

  @override
  void initState() {
    super.initState();
    _range = RangeValues(
      widget.initialMin ?? _minBound,
      widget.initialMax ?? _maxBound,
    );
  }

  void _updateFromRange(RangeValues values) {
    setState(() => _range = values);
    widget.minController.text = values.start.toStringAsFixed(0);
    widget.maxController.text = values.end.toStringAsFixed(0);
    widget.onChanged(values.start, values.end);
  }

  bool _isPresetActive(double min, double max) =>
      _range.start == min && _range.end == max;

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final theme = Theme.of(context);
    final colors = widget.colors;

    return Container(
      padding: EdgeInsets.fromLTRB(
        AppSizes.w16,
        AppSizes.h16,
        AppSizes.w16,
        AppSizes.h14,
      ),
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(AppSizes.r16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Dual-handle range slider ───────────────────────────
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackHeight: 4,
              rangeThumbShape: const RoundRangeSliderThumbShape(
                enabledThumbRadius: 10,
              ),
              overlayShape: const RoundSliderOverlayShape(overlayRadius: 20),
              activeTrackColor: colors.primary,
              inactiveTrackColor: colors.border,
              thumbColor: colors.surface,
              overlayColor: colors.primary.withOpacity(0.12),
              valueIndicatorColor: colors.primary,
              showValueIndicator: ShowValueIndicator.always,
              valueIndicatorTextStyle: theme.textTheme.labelSmall?.copyWith(
                color: colors.textOnPrimary,
              ),
            ),
            child: RangeSlider(
              min: _minBound,
              max: _maxBound,
              divisions: 200,
              values: _range,
              labels: RangeLabels(
                '${s.currency} ${_range.start.toStringAsFixed(0)}',
                '${s.currency} ${_range.end.toStringAsFixed(0)}',
              ),
              onChanged: _updateFromRange,
            ),
          ),
          SizedBox(height: AppSizes.h12),
          // ── Pill inputs ────────────────────────────────────────
          Row(
            children: [
              Expanded(
                child: _PricePillInput(
                  controller: widget.minController,
                  label: s.filterPriceFrom,
                  currency: s.currency,
                  colors: colors,
                  onSubmitted: (v) {
                    final val = double.tryParse(v) ?? _range.start;
                    _updateFromRange(
                      RangeValues(
                        val.clamp(_minBound, _range.end - 1),
                        _range.end,
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizes.w10),
                child: Padding(
                  padding: EdgeInsets.only(top: AppSizes.h14),
                  child: Text(
                    '—',
                    style: TextStyle(color: colors.textHint, fontSize: 18),
                  ),
                ),
              ),
              Expanded(
                child: _PricePillInput(
                  controller: widget.maxController,
                  label: s.filterPriceTo,
                  currency: s.currency,
                  colors: colors,
                  onSubmitted: (v) {
                    final val = double.tryParse(v) ?? _range.end;
                    _updateFromRange(
                      RangeValues(
                        _range.start,
                        val.clamp(_range.start + 1, _maxBound),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: AppSizes.h14),
          // ── Quick presets ──────────────────────────────────────
          Wrap(
            spacing: AppSizes.w6,
            runSpacing: AppSizes.h6,
            children: _presets.map((preset) {
              final active = _isPresetActive(preset.min, preset.max);
              return GestureDetector(
                onTap: () {
                  _updateFromRange(RangeValues(preset.min, preset.max));
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 160),
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.w12,
                    vertical: AppSizes.h4,
                  ),
                  decoration: BoxDecoration(
                    color: active
                        ? colors.primary.withOpacity(0.1)
                        : colors.surface,
                    borderRadius: BorderRadius.circular(AppSizes.r50),
                    border: Border.all(
                      color: active ? colors.primary : colors.border,
                      width: active ? 1.5 : 1,
                    ),
                  ),
                  child: Text(
                    preset.label,
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: active ? colors.primary : colors.textSecondary,
                      fontWeight: active ? FontWeight.w600 : FontWeight.normal,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Price Pill Input
// ─────────────────────────────────────────────────────────────────────────────

class _PricePillInput extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String currency;
  final MyColors colors;
  final ValueChanged<String> onSubmitted;

  const _PricePillInput({
    required this.controller,
    required this.label,
    required this.currency,
    required this.colors,
    required this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: theme.textTheme.labelSmall?.copyWith(color: colors.textHint),
        ),
        SizedBox(height: AppSizes.h4),
        TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.done,
          onSubmitted: onSubmitted,
          style: theme.textTheme.bodyMedium,
          decoration: InputDecoration(
            prefixText: '$currency ',
            prefixStyle: TextStyle(color: colors.textHint, fontSize: 13),
            isDense: true,
            contentPadding: EdgeInsets.symmetric(
              horizontal: AppSizes.w14,
              vertical: AppSizes.h10,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSizes.r50),
              borderSide: BorderSide(color: colors.border),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSizes.r50),
              borderSide: BorderSide(color: colors.border),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSizes.r50),
              borderSide: BorderSide(color: colors.primary, width: 1.5),
            ),
          ),
        ),
      ],
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Section Label
// ─────────────────────────────────────────────────────────────────────────────

class _SectionLabel extends StatelessWidget {
  final String label;
  const _SectionLabel({required this.label});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    return Row(
      children: [
        Container(
          width: 3,
          height: AppSizes.h16,
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(AppSizes.r4),
          ),
        ),
        SizedBox(width: AppSizes.w8),
        Text(label, style: Theme.of(context).textTheme.titleSmall),
      ],
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Filter Chip
// ─────────────────────────────────────────────────────────────────────────────

class _FilterChip extends StatelessWidget {
  final String label;
  final IconData? icon;
  final bool selected;
  final MyColors colors;
  final VoidCallback onTap;

  const _FilterChip({
    required this.label,
    required this.selected,
    required this.colors,
    required this.onTap,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.w12,
          vertical: AppSizes.h8,
        ),
        decoration: BoxDecoration(
          color: selected ? colors.primary : colors.surface,
          borderRadius: BorderRadius.circular(AppSizes.r8),
          border: Border.all(
            color: selected ? colors.primary : colors.border,
            width: selected ? 1.5 : 1,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              Icon(
                icon,
                size: 14,
                color: selected ? colors.textOnPrimary : colors.textSecondary,
              ),
              SizedBox(width: AppSizes.w4),
            ],
            Text(
              label,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: selected ? colors.textOnPrimary : colors.textPrimary,
                fontWeight: selected ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
