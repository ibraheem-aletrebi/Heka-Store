
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/wishlist/presentation/blocs/previous_viewed_products/previous_viewed_products_bloc.dart';
import 'package:heka_store/Features/wishlist/presentation/blocs/wishlist/wishlist_bloc.dart';
import 'package:heka_store/Features/wishlist/presentation/components/previous_viewed_products_view_body.dart';
import 'package:heka_store/core/di/injector.dart';

class PreviousViewedProductsView extends StatelessWidget {
  const PreviousViewedProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              sl<PreviousViewedProductsBloc>()
                ..add(const PreviousViewedProductsEvent.getProducts()),
        ),
        BlocProvider(
          create: (_) => sl<WishlistBloc>()..add(const WishlistEvent.loaded()),
        ),
      ],
      child: Scaffold(body: SafeArea(child: PreviousViewedProductsViewBody())),
    );
  }
}
