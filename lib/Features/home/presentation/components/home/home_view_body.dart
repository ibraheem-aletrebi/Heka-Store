import 'package:flutter/material.dart';
import 'package:heka_store/Features/home/presentation/components/home/home_sliver_app_bar.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        HomeSliverAppBar(),
      
      ],
    );
  }
}
