import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/home/presentation/blocs/brands/brands_bloc.dart';
import 'package:heka_store/Features/home/presentation/components/home/brand_item.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_skeletonizer.dart';
import 'package:heka_store/core/widgets/section_header.dart';
import 'package:heka_store/generated/l10n.dart';

class BrandStoresSection extends StatefulWidget {
  const BrandStoresSection({super.key});

  @override
  State<BrandStoresSection> createState() => _BrandStoresSectionState();
}

class _BrandStoresSectionState extends State<BrandStoresSection> {
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
    final nearEnd =
        _scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200;

    if (nearEnd) {
      context.read<BrandsBloc>().add(const BrandsEvent.nextPage());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BrandsBloc, BrandsState>(
      builder: (context, state) {
        if (state.brands.isEmpty && !state.isLoading) {
          return const SizedBox.shrink();
        }

        final brands = state.brands;
        final columnCount = (brands.length / 3).ceil();

        return CustomSkeletonizer(
          enable: state.isLoading,
          child: Column(
            spacing: AppSizes.h10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionHeader(title: S.of(context).brandStores),

              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.35,
                child: ListView.separated(
                  controller: _scrollController,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.w16,
                    vertical: 0,
                  ),
                  itemCount: columnCount + (state.isPaginating ? 1 : 0),
                  separatorBuilder: (_, _) => SizedBox(width: AppSizes.w16),
                  itemBuilder: (_, i) {
                    if (i == columnCount) {
                      final start = i - 1 * 3;
                      final end = (start + 3).clamp(0, brands.length);
                      return CustomSkeletonizer(
                        enable: true,
                        child: BrandItem(brands: brands.sublist(start, end)),
                      );
                    }
                    final start = i * 3;
                    final end = (start + 3).clamp(0, brands.length);
                    return BrandItem(brands: brands.sublist(start, end));
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
