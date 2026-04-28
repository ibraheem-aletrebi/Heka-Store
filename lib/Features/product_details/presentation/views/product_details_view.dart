import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/product_details/presentation/blocs/product_details/product_details_bloc.dart';
import 'package:heka_store/Features/product_details/presentation/blocs/reviews/reviews_bloc.dart';
import 'package:heka_store/Features/product_details/presentation/blocs/reviews/reviews_event.dart';
import 'package:heka_store/Features/product_details/presentation/blocs/similar_products/similar_products_bloc.dart';
import 'package:heka_store/Features/product_details/presentation/components/product_details_body.dart';
import 'package:heka_store/core/di/injector.dart';

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
        BlocProvider(
          create: (context) => sl<ReviewsBloc>(
          )..add(ReviewsStarted(productId: productId, pageSize: 5)),
        ),
      ],
      child: Scaffold(body: SafeArea(child: const ProductDetailsBody())),
    );
  }
}
