import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/home/presentation/blocs/bloc/home_bloc.dart';
import 'package:heka_store/Features/home/presentation/components/home/featured_section.dart';
import 'package:heka_store/Features/home/presentation/components/home/home_sliver_app_bar.dart';
import 'package:heka_store/Features/home/presentation/components/home/recommended_for_you_section.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/search_bar_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<HomeBloc>().add(const HomeEvent.refreshed());
      },
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          HomeSliverAppBar(),
          SliverToBoxAdapter(child: AppSearchBar()),
          SliverToBoxAdapter(child: SizedBox(height: AppSizes.h16)),
          SliverToBoxAdapter(child: RecommendedForYouSection()),
          SliverToBoxAdapter(child: SizedBox(height: AppSizes.h16)),
          SliverToBoxAdapter(child: FeaturedSection()),
          SliverToBoxAdapter(child: SizedBox(height: AppSizes.h100)),
        ],
      ),
    );
  }
}
