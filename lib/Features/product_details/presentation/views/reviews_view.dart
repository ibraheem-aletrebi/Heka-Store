import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:heka_store/Features/product_details/presentation/blocs/reviews/reviews_bloc.dart';
import 'package:heka_store/Features/product_details/presentation/blocs/reviews/reviews_event.dart';
import 'package:heka_store/Features/product_details/presentation/blocs/reviews/reviews_state.dart';
import 'package:heka_store/Features/product_details/presentation/components/product_reviews_section.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/generated/l10n.dart';

class ReviewsView extends StatefulWidget {
  final int productId;
  final int? totalCount;

  const ReviewsView({
    super.key,
    required this.productId,
    this.totalCount,
  });

  @override
  State<ReviewsView> createState() => _ReviewsViewState();
}

class _ReviewsViewState extends State<ReviewsView> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    final bloc = context.read<ReviewsBloc>();
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      bloc.add(const ReviewsNextPageFetched());
    }
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    return BlocProvider(
      create: (context) => ReviewsBloc(
        reviewsRepo: context.read(),
      )..add(ReviewsStarted(
          productId: widget.productId,
          pageSize: 10,
        )),
      child: Scaffold(
        backgroundColor: context.myColors.background,
        appBar: AppBar(
          backgroundColor: context.myColors.background,
          elevation: 0,
          leading: GestureDetector(
            onTap: () => context.pop(),
            child: Container(
              margin: EdgeInsets.all(AppSizes.w8),
              decoration: BoxDecoration(
                color: context.myColors.surface,
                borderRadius: BorderRadius.circular(AppSizes.r12),
              ),
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                size: AppSizes.sp18,
                color: context.myColors.textPrimary,
              ),
            ),
          ),
          title: BlocBuilder<ReviewsBloc, ReviewsState>(
            buildWhen: (prev, curr) => prev.totalCount != curr.totalCount,
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    s.reviews(state.totalCount ?? 0),
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  if (state.totalCount != null)
                    Text(
                      '${state.totalCount} ${s.reviews}',
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: context.myColors.textSecondary,
                          ),
                    ),
                ],
              );
            },
          ),
        ),
        body: BlocBuilder<ReviewsBloc, ReviewsState>(
          builder: (context, state) {
            // ── Initial loading ───────────────────────────────────────
            if (state.isLoading) {
              return const Center(child: CupertinoActivityIndicator());
            }

            // ── Error (no data at all) ────────────────────────────────
            if (state.error != null && state.reviews.isEmpty) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.error_outline_rounded,
                      size: AppSizes.w48,
                      color: context.myColors.error,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      s.something_went_wrong,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 16),
                    FilledButton(
                      onPressed: () => context.read<ReviewsBloc>().add(
                            ReviewsStarted(
                              productId: widget.productId,
                              pageSize: 10,
                            ),
                          ),
                      child: Text(s.retry),
                    ),
                  ],
                ),
              );
            }

            // ── Empty ────────────────────────────────────────────────
            if (state.reviews.isEmpty) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.reviews_outlined,
                      size: AppSizes.w48,
                      color: context.myColors.textSecondary,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      s.no_reviews_yet,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: context.myColors.textSecondary,
                          ),
                    ),
                  ],
                ),
              );
            }

            // ── List ────────────────────────────────────────────────
            return ListView.builder(
              controller: _scrollController,
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.w16,
                vertical: AppSizes.h12,
              ),
              itemCount: state.reviews.length + (state.isFetchingMore ? 1 : 0),
              itemBuilder: (context, index) {
                if (index == state.reviews.length) {
                  // Pagination loading indicator
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Center(child: CupertinoActivityIndicator()),
                  );
                }
                return ReviewCard(review: state.reviews[index]);
              },
            );
          },
        ),
      ),
    );
  }
}