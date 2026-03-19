import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/home/blocs/main_layout/main_layout_bloc.dart';
import 'package:heka_store/Features/home/components/layout/floating_bottom_nav_bar.dart';
import 'package:heka_store/Features/home/views/home/home_view.dart';
import 'package:heka_store/core/resources/app_sizes.dart';


class MainLayoutViewBody extends StatelessWidget {
  const MainLayoutViewBody({super.key});
  static const _pages = [
    HomeView(),
    
  ];
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<MainLayoutBloc>();
    return Stack(
      children: [
        PageView(
          controller: cubit.pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: MainLayoutViewBody._pages,
        ),
        Positioned(
          bottom: AppSizes.h16,
          left: 0,
          right: 0,
          child: FloatingBottomNavBar(),
        ),
      ],
    );
  }
}
