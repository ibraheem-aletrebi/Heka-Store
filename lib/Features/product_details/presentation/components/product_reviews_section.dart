import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:heka_store/Features/product_details/data/models/review_model.dart';
import 'package:heka_store/Features/product_details/presentation/blocs/reviews/reviews_bloc.dart';
import 'package:heka_store/Features/product_details/presentation/blocs/reviews/reviews_state.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/generated/l10n.dart';

class ProductReviewsSection extends StatelessWidget {
  final int productId;

  const ProductReviewsSection({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    // Bloc is already provided by ProductDetailsView — just read it
    return BlocBuilder<ReviewsBloc, ReviewsState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.w16,
            vertical: AppSizes.h12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              // ── Header ────────────────────────────────────────────
              Row(
                children: [
                  Text(
                    s.reviews(state.totalCount ?? 0),
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const Spacer(),
                  // "See all" — only when there are more than 5 reviews
                  if ((state.totalCount ?? 0) > 5)
                    TextButton(
                      onPressed: () => context.push(
                        '/reviews/$productId',
                        extra: state.totalCount,
                      ),
                      style: TextButton.styleFrom(
                        foregroundColor: context.myColors.primary,
                        padding: EdgeInsets.zero,
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: Text(
                        s.see_all,
                        style: Theme.of(context).textTheme.labelMedium
                            ?.copyWith(color: context.myColors.primary),
                      ),
                    ),
                ],
              ),

              const SizedBox(height: 12),

              // ── Loading ────────────────────────────────────────────
              if (state.isLoading)
                const Center(child: CupertinoActivityIndicator())
              // ── Error ──────────────────────────────────────────────
              else if (state.error != null && state.reviews.isEmpty)
                Center(
                  child: Text(
                    s.something_went_wrong,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: context.myColors.error,
                    ),
                  ),
                )
              // ── Empty ──────────────────────────────────────────────
              else if (state.reviews.isEmpty)
                Center(
                  child: Text(
                    s.no_reviews_yet,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: context.myColors.textSecondary,
                    ),
                  ),
                )
              // ── Review cards ───────────────────────────────────────
              else
                Column(
                  children: state.reviews
                      .map((r) => ReviewCard(review: r))
                      .toList(),
                ),
            ],
          ),
        );
      },
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Shared review card (used here and in ReviewsView)
// ─────────────────────────────────────────────────────────────────────────────
class ReviewCard extends StatelessWidget {
  final ReviewModel review;
  const ReviewCard({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: AppSizes.h12),
      padding: EdgeInsets.all(AppSizes.w12),
      decoration: BoxDecoration(
        color: context.myColors.surface,
        borderRadius: BorderRadius.circular(AppSizes.r12),
        border: Border.all(color: context.myColors.border.withOpacity(0.5)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── User row ────────────────────────────────────────────
          Row(
            children: [
              CircleAvatar(
                radius: AppSizes.w18,
                backgroundColor: context.myColors.primary.withOpacity(0.15),
                child: Text(
                  review.userName.isNotEmpty
                      ? review.userName[0].toUpperCase()
                      : '?',
                  style: TextStyle(
                    color: context.myColors.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: AppSizes.sp14,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      review.userName,
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      _formatDate(review.createdAt),
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: context.myColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
              _StarRating(rating: review.rating),
            ],
          ),

          const SizedBox(height: 8),

          // ── Comment ─────────────────────────────────────────────
          Text(
            review.comment,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: context.myColors.textSecondary,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  String _formatDate(DateTime date) => '${date.day}/${date.month}/${date.year}';
}

// ─────────────────────────────────────────────────────────────────────────────
// Star rating
// ─────────────────────────────────────────────────────────────────────────────
class _StarRating extends StatelessWidget {
  final int rating;
  const _StarRating({required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index < rating ? Icons.star_rounded : Icons.star_outline_rounded,
          size: AppSizes.sp14,
          color: index < rating ? Colors.amber : context.myColors.textSecondary,
        );
      }),
    );
  }
}
