import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/home/presentation/blocs/recommended_for_you/recommended_for_you_bloc.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_skeletonizer.dart';
import 'package:heka_store/core/widgets/product_card/product_card.dart';

import 'package:heka_store/core/di/injector.dart';

class TrendsView extends StatelessWidget {
  const TrendsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          sl<RecommendedForYouBloc>()
            ..add(const RecommendedForYouEvent.loaded()),
      child: const Scaffold(body: TrendsViewBody()),
    );
  }
}

class TrendsViewBody extends StatelessWidget {
  const TrendsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(),
        Expanded(
          child: BlocBuilder<RecommendedForYouBloc, RecommendedForYouState>(
            buildWhen: (p, c) =>
                p.recommendedProducts != c.recommendedProducts ||
                p.isRecommendedLoading != c.isRecommendedLoading ||
                p.isRecommendedLoadingMore != c.isRecommendedLoadingMore,
            builder: (context, state) {
              if (state.isRecommendedLoading) {
                return GridView.builder(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.w16,
                    vertical: AppSizes.h12,
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: AppSizes.w12,
                    mainAxisSpacing: AppSizes.h12,
                    childAspectRatio: 0.75,
                  ),
                  itemCount: 4,
                  itemBuilder: (_, __) =>
                      CustomSkeletonizer(enable: true, child: ProductCard()),
                );
              }

              return NotificationListener<ScrollNotification>(
                onNotification: (notification) {
                  if (notification is ScrollEndNotification &&
                      notification.metrics.extentAfter < 200 &&
                      state.hasRecommendedNextPage &&
                      !state.isRecommendedLoadingMore) {
                    context.read<RecommendedForYouBloc>().add(
                      const RecommendedForYouEvent.recommendedNextPageFetched(),
                    );
                  }
                  return false;
                },
                child: GridView.builder(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.w16,
                    vertical: AppSizes.h12,
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: AppSizes.w12,
                    mainAxisSpacing: AppSizes.h12,
                    childAspectRatio: 0.75,
                  ),
                  itemCount:
                      state.recommendedProducts.length +
                      (state.isRecommendedLoadingMore ? 2 : 0),
                  itemBuilder: (context, index) {
                    if (index >= state.recommendedProducts.length) {
                      return CustomSkeletonizer(
                        enable: true,
                        child: ProductCard(),
                      );
                    }
                    return ProductCard(
                      productModel: state.recommendedProducts[index],
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
