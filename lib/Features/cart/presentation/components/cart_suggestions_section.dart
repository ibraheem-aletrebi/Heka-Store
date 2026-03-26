import 'package:flutter/material.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/section_header.dart';


class SuggestionsSection extends StatelessWidget {
  final String title;
  const SuggestionsSection({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(title: title),
        SizedBox(height: AppSizes.h12),
        // SizedBox(
        //   height: MediaQuery.sizeOf(context).height * 0.35,
        //   child: ListView.separated(
        //     padding: EdgeInsets.symmetric(horizontal: AppSizes.w16),
        //     scrollDirection: Axis.horizontal,
        //     physics: const BouncingScrollPhysics(),
        //     itemCount: 5,
        //     separatorBuilder: (_, __) => SizedBox(width: AppSizes.w12),
        //     itemBuilder: (_, i) => ProductCard(isBestSeller: i == 1 || i == 4),
        //   ),
        // ),
      ],
    );
  }
}
