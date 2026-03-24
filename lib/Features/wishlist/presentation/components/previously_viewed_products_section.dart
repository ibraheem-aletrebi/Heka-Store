// import 'package:flutter/material.dart';
// import 'package:heka/core/resources/app_sizes.dart';
// import 'package:heka/core/widgets/product_card/product_card.dart';
// import 'package:heka/core/widgets/section_header.dart';
// import 'package:heka/generated/l10n.dart';

// class PreviouslyViewedProductsSection extends StatelessWidget {
//   const PreviouslyViewedProductsSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       spacing: AppSizes.h16,
//       children: [
//         SectionHeader(title: S.of(context).previouslyViewedItem),
//         SizedBox(
//           height: MediaQuery.sizeOf(context).height * 0.35,
//           child: ListView.separated(
//             padding: EdgeInsets.symmetric(horizontal: AppSizes.w12),
//             scrollDirection: Axis.horizontal,
//             physics: const BouncingScrollPhysics(),
//             itemCount: 10,
//             separatorBuilder: (_, _) => SizedBox(width: AppSizes.w10),
//             itemBuilder: (_, i) => ProductCard(isBestSeller: i == 1 || i == 4),
//           ),
//         ),
//       ],
//     );
//   }
// }
