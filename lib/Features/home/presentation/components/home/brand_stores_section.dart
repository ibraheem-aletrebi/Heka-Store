import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/home/presentation/blocs/home/home_bloc.dart';
import 'package:heka_store/Features/home/presentation/components/home/brand_item.dart';
import 'package:heka_store/Features/home/presentation/components/home/brand_tile.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_skeletonizer.dart';
import 'package:heka_store/core/widgets/section_header.dart';
import 'package:heka_store/generated/l10n.dart';

class BrandStoresSection extends StatelessWidget {
  const BrandStoresSection({super.key});

  // ─── Fallback ─────────────────────────────────────
  static const _fallbackBrands = [
    Brand(name: 'Bata', rating: 4.5, reviews: '4.4k', isVerified: true),
    Brand(name: 'Adidas', rating: 4.5, reviews: '4.4k', isVerified: true),
    Brand(name: 'Nike', rating: 4.5, reviews: '4.4k', isVerified: true),
    Brand(name: 'Zara', rating: 4.3, reviews: '3.2k', isVerified: true),
    Brand(name: 'H&M', rating: 4.2, reviews: '2.8k', isVerified: false),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (p, c) =>
          p.brands != c.brands || p.isBrandsLoading != c.isBrandsLoading,
      builder: (context, state) {
        // ─── Loading ──────────────────────────────────
        if (state.isBrandsLoading) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionHeader(title: S.of(context).brandStores, onSeeAll: () {}),
              SizedBox(height: AppSizes.h12),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.2,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: AppSizes.w16),
                  itemCount: 2,
                  separatorBuilder: (_, __) => SizedBox(width: AppSizes.w16),
                  itemBuilder: (_, __) => CustomSkeletonizer(
                    enable: true,
                    child: BrandItem(
                      brands: const [
                        Brand(
                          name: 'Brand',
                          rating: 4.5,
                          reviews: '4.4k',
                          isVerified: true,
                        ),
                        Brand(
                          name: 'Brand',
                          rating: 4.5,
                          reviews: '4.4k',
                          isVerified: true,
                        ),
                        Brand(
                          name: 'Brand',
                          rating: 4.5,
                          reviews: '4.4k',
                          isVerified: true,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        }

        // ─── Data ─────────────────────────────────────
        final hasApiData = state.brands.isNotEmpty;
        final brands = hasApiData
            ? state.brands
                  .map(
                    (b) => Brand(
                      name: b.nameEn,
                      rating: b.rating ?? 0,
                      reviews: '${b.totalReviews ?? 0}',
                      isVerified: true,
                    ),
                  )
                  .toList()
            : _fallbackBrands;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeader(title: S.of(context).brandStores, onSeeAll: () {}),
            SizedBox(height: AppSizes.h14),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.3,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: AppSizes.w16),
                itemCount: (brands.length / 3).ceil(),
                separatorBuilder: (_, __) => SizedBox(width: AppSizes.w16),
                itemBuilder: (_, i) {
                  final start = i * 3;
                  final end = (start + 3).clamp(0, brands.length);
                  return BrandItem(brands: brands.sublist(start, end));
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
