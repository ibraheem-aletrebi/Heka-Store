import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/home/blocs/main_layout/main_layout_bloc.dart';
import 'package:heka_store/Features/home/components/layout/main_layout_view_body.dart';

class MainLayoutView extends StatelessWidget {
  const MainLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MainLayoutBloc(),
      child: Scaffold(
        extendBody: true,
        body: SafeArea(child: const MainLayoutViewBody()),
      ),
    );
  }
}
