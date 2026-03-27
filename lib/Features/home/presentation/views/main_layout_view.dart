import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/cart/presentation/blocs/cart/cart_bloc.dart';
import 'package:heka_store/Features/home/presentation/blocs/main_layout/main_layout_bloc.dart';
import 'package:heka_store/Features/home/presentation/components/layout/main_layout_view_body.dart';
import 'package:heka_store/Features/wishlist/presentation/blocs/previous_viewed_products/previous_viewed_products_bloc.dart';
import 'package:heka_store/Features/wishlist/presentation/blocs/wishlist/wishlist_bloc.dart';
import 'package:heka_store/core/di/injector.dart';

class MainLayoutView extends StatelessWidget {
  const MainLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CartBloc>(
          create: (context) =>
              sl<CartBloc>()..add(const CartEvent.countFetched()),
        ),
        BlocProvider<MainLayoutBloc>(
          create: (context) =>
              MainLayoutBloc(cartBloc: context.read<CartBloc>()),
        ),
        BlocProvider<WishlistBloc>(
          create: (context) =>
              sl<WishlistBloc>()..add(const WishlistEvent.loaded()),
        ),
        BlocProvider<PreviousViewedProductsBloc>(
          create: (context) => sl<PreviousViewedProductsBloc>(),
        ),
      ],
      child: const Scaffold(
        extendBody: true,
        body: SafeArea(child: MainLayoutViewBody()),
      ),
    );
  }
}
