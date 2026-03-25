import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/cart/presentation/blocs/bloc/cart_bloc.dart';
import 'package:heka_store/Features/cart/presentation/components/cart_view_body.dart';
import 'package:heka_store/core/di/injector.dart';
import 'package:heka_store/core/resources/app_sizes.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<CartBloc>()..add(const CartEvent.loaded()),
      child: Scaffold(
        body: SafeArea(bottom: false, child: CartViewBody()),
        bottomNavigationBar: SizedBox(height: AppSizes.h90),
      ),
    );
  }
}
