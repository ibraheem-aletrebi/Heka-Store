import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/brand_profile/presentation/blocs/brand_profile/brand_profile_bloc.dart';
import 'package:heka_store/Features/brand_profile/presentation/components/brand_profile_body.dart';
import 'package:heka_store/core/di/injector.dart';


class BrandProfileView extends StatelessWidget {
  final int brandId;
  const BrandProfileView({super.key, required this.brandId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<BrandProfileBloc>()
        ..add(BrandProfileEvent.loaded(brandId: brandId)),
      child: const BrandProfileBody(),
    );
  }
}