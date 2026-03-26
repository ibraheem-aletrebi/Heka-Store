import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/cart/presentation/blocs/cart/cart_bloc.dart';
import 'package:heka_store/Features/cart/presentation/blocs/products_you_may_like/may_like_bloc.dart';
import 'package:heka_store/Features/cart/presentation/components/cart_view_body_bloc_builder.dart';
import 'package:heka_store/Features/home/presentation/blocs/recommended_for_you/recommended_for_you_bloc.dart';
import 'package:heka_store/core/di/injector.dart';
import 'package:heka_store/core/resources/app_sizes.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  void initState() {
    context.read<CartBloc>().add(const CartEvent.loaded());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              sl<RecommendedForYouBloc>()
                ..add(const RecommendedForYouEvent.loaded()),
        ),
        BlocProvider(
          create: (context) =>
              sl<MayLikeBloc>()..add(const MayLikeEvent.loaded()),
        ),
      ],
      child: Scaffold(
        body: SafeArea(bottom: false, child: CartViewBodyBlocBuilder()),
        bottomNavigationBar: SizedBox(height: AppSizes.h90),
      ),
    );
  }
}
