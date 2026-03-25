import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/home/presentation/blocs/main_layout/main_layout_bloc.dart';
import 'package:heka_store/Features/home/presentation/components/layout/main_layout_view_body.dart';
import 'package:heka_store/Features/wishlist/presentation/blocs/wishlist/wishlist_bloc.dart';
import 'package:heka_store/core/di/injector.dart';

class MainLayoutView extends StatelessWidget {
  const MainLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => MainLayoutBloc()),
        BlocProvider<WishlistBloc>(
          create: (context) =>
              sl<WishlistBloc>()..add(const WishlistEvent.loaded()),
        ),
      ],
      child: Scaffold(
        extendBody: true,
        body: SafeArea(child: const MainLayoutViewBody()),
      ),
    );
  }
}
