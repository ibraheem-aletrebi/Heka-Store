import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/home/presentation/blocs/bloc/home_bloc.dart';
import 'package:heka_store/Features/home/presentation/components/home/home_view_body.dart';
import 'package:heka_store/core/di/injector.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<HomeBloc>()..add(const HomeEvent.started()),
      child: HomeViewBody(),
    );
  }
}
