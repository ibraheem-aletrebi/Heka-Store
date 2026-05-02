import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/brand_profile/presentation/blocs/brand_profile/brand_profile_bloc.dart';
import 'package:heka_store/Features/brand_profile/presentation/components/brand_banner.dart';
import 'package:heka_store/Features/brand_profile/presentation/components/brand_info_section.dart';
import 'package:heka_store/Features/brand_profile/presentation/components/brand_products_section.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_skeletonizer.dart';

class BrandProfileBody extends StatelessWidget {
  const BrandProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BrandProfileBloc, BrandProfileState>(
      builder: (context, state) {
        return CustomSkeletonizer(
          enable: state.isLoading,
          child: CustomScrollView(
            slivers: [
              BrandBanner(
                bannerUrl: state.brand?.bannerImageUrl,
                logoUrl: state.brand?.logoUrl,
                storeName: state.brand?.storeNameEn,
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: AppSizes.h16,
                ), // Space for avatar overlap
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppSizes.w16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: AppSizes.h36),
                      BrandInfoSection(brand: state.brand),
                      SizedBox(height: AppSizes.h16),
                      const Divider(height: 1),
                      SizedBox(height: AppSizes.h16),
                      BrandProductsSection(
                        products: state.products,
                        isLoading: state.isProductsLoading,
                      ),
                    ],
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
