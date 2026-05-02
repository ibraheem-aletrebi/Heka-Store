import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/home/presentation/blocs/category_product/category_product_cubit.dart';
import 'package:heka_store/Features/home/presentation/blocs/category_product/category_product_state.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/product_card/grid_product_card.dart';
import 'package:heka_store/generated/l10n.dart';

class CategoryProductsViewBody extends StatefulWidget {
  const CategoryProductsViewBody({super.key, required this.categoryCode});

  final String categoryCode;

  @override
  State<CategoryProductsViewBody> createState() =>
      _CategoryProductsViewBodyState();
}

class _CategoryProductsViewBodyState extends State<CategoryProductsViewBody> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<CategoryProductsCubit>().fetchProducts(widget.categoryCode);
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      context.read<CategoryProductsCubit>().fetchMoreProducts(
        widget.categoryCode,
      );
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;

    return BlocBuilder<CategoryProductsCubit, CategoryProductsState>(
      builder: (context, state) {
        // ── Loading ──────────────────────────────────────────────────────
        if (state is CategoryProductsLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        // ── Error ────────────────────────────────────────────────────────
        if (state is CategoryProductsError) {
          return Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.w16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.wifi_off_rounded,
                    size: 52,
                    color: colors.textHint,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    state.message,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: colors.textSecondary),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton.icon(
                    onPressed: () => context
                        .read<CategoryProductsCubit>()
                        .fetchProducts(widget.categoryCode),
                    icon: const Icon(Icons.refresh_rounded),
                    label: Text(s.retry),
                  ),
                ],
              ),
            ),
          );
        }

        // ── Loaded ───────────────────────────────────────────────────────
        if (state is CategoryProductsLoaded) {
          // Empty state
          if (state.products.isEmpty) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.inbox_outlined, size: 52, color: colors.textHint),
                  const SizedBox(height: 12),
                  Text(
                    s.noResultsFound,
                    style: TextStyle(color: colors.textSecondary),
                  ),
                ],
              ),
            );
          }

          // Adapt grid aspect ratio to screen height
          final screenHeight = MediaQuery.sizeOf(context).height;
          final childAspectRatio = screenHeight < 700 ? 0.45 : 0.5;

          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSizes.w16,
              vertical: AppSizes.w16,
            ),
            child: GridView.builder(
              controller: _scrollController,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: AppSizes.w4,
                mainAxisSpacing: AppSizes.w4,
                childAspectRatio: childAspectRatio,
              ),
              itemCount: state.products.length + (state.hasNextPage ? 1 : 0),
              itemBuilder: (context, index) {
                // Pagination spinner
                if (index == state.products.length) {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                  );
                }
                return GridProductCard(productModel: state.products[index]);
              },
            ),
          );
        }

        return const SizedBox.shrink();
      },
    );
  }
}
