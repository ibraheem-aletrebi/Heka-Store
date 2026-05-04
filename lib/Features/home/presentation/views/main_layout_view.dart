import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/address/presentation/blocs/address/address_bloc.dart';
import 'package:heka_store/Features/cart/presentation/blocs/cart/cart_bloc.dart';
import 'package:heka_store/Features/home/presentation/blocs/main_layout/main_layout_bloc.dart';
import 'package:heka_store/Features/home/presentation/blocs/user_profile/user_profile_bloc.dart';
import 'package:heka_store/Features/home/presentation/components/layout/main_layout_view_body.dart';
import 'package:heka_store/Features/wishlist/presentation/blocs/previous_viewed_products/previous_viewed_products_bloc.dart';
import 'package:heka_store/Features/wishlist/presentation/blocs/wishlist/wishlist_bloc.dart';
import 'package:heka_store/core/di/injector.dart';

class MainLayoutView extends StatefulWidget {
  const MainLayoutView({super.key});

  @override
  State<MainLayoutView> createState() => _MainLayoutViewState();
}

class _MainLayoutViewState extends State<MainLayoutView> {
  @override
  initState() {
    super.initState();
    context.read<CartBloc>().add(const CartEvent.countFetched());
    context.read<WishlistBloc>().add(const WishlistEvent.loaded());
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MainLayoutBloc>(
          create: (context) =>
              MainLayoutBloc(cartBloc: context.read<CartBloc>()),
        ),

        BlocProvider<PreviousViewedProductsBloc>(
          create: (context) => sl<PreviousViewedProductsBloc>(),
        ),
          BlocProvider(
          create: (context) =>
              sl<UserProfileBloc>()..add(const UserProfileEvent.loaded()),
        ),
        BlocProvider(
          create: (context) =>
              sl<AddressBloc>()..add(const AddressEvent.loaded()),
        ),
      ],

      child: const Scaffold(
        extendBody: true,
        body: SafeArea(child: MainLayoutViewBody()),
      ),
    );
  }
}
