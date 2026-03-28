import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/product_details/presentation/blocs/product_details/product_details_bloc.dart';
import 'package:heka_store/Features/product_details/presentation/blocs/similar_products/similar_products_bloc.dart';
import 'package:heka_store/Features/product_details/presentation/components/product_details_body.dart';
import 'package:heka_store/core/di/injector.dart';
import 'package:heka_store/core/widgets/custom_skeletonizer.dart';

class ProductDetailsView extends StatelessWidget {
  final int productId;
  const ProductDetailsView({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              sl<ProductDetailsBloc>()
                ..add(ProductDetailsEvent.started(productId)),
        ),
        BlocProvider(create: (_) => sl<SimilarProductsBloc>()),
      ],
      child: Scaffold(
        body: SafeArea(
          child: Builder(
            builder: (context) => CustomSkeletonizer(
              enable: context.read<ProductDetailsBloc>().state.isLoading,
              child: const ProductDetailsBody(),
            ),
          ),
        ),
      ),
    );
  }
}
