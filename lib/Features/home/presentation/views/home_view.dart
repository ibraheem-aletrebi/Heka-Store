import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/address/presentation/blocs/address/address_bloc.dart';
import 'package:heka_store/Features/home/presentation/blocs/brands/brands_bloc.dart';
import 'package:heka_store/Features/home/presentation/blocs/categories/categories_bloc.dart';
import 'package:heka_store/Features/home/presentation/blocs/home/home_bloc.dart';
import 'package:heka_store/Features/home/presentation/blocs/recommended_for_you/recommended_for_you_bloc.dart';
import 'package:heka_store/Features/home/presentation/blocs/user_profile/user_profile_bloc.dart';
import 'package:heka_store/Features/home/presentation/components/home/home_view_body.dart';
import 'package:heka_store/core/di/injector.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<HomeBloc>()..add(const HomeEvent.started()),
        ),
        BlocProvider(
          create: (context) =>
              sl<RecommendedForYouBloc>()
                ..add(const RecommendedForYouEvent.loaded()),
        ),
        BlocProvider(
          create: (_) =>
              sl<CategoriesBloc>()..add(const CategoriesEvent.loaded()),
        ),
        BlocProvider(
          create: (context) =>
              sl<UserProfileBloc>()..add(const UserProfileEvent.loaded()),
        ),
        BlocProvider(
          create: (context) =>
              sl<AddressBloc>()..add(const AddressEvent.loaded()),
        ),
         BlocProvider(
          create: (context) =>
              sl<BrandsBloc>()..add(const BrandsEvent.loaded()),
        ),
      ],
      child: HomeViewBody(),
    );
  }
}
