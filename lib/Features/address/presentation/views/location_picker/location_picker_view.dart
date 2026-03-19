import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/address/presentation/blocs/location_picker/location_picker_bloc.dart';
import 'package:heka_store/Features/address/presentation/components/location_picker/location_picker_view_body_bloc_listener.dart';
import 'package:heka_store/core/di/injector.dart';

class LocationPickerView extends StatelessWidget {
  final bool isOnboarding;
  const LocationPickerView({super.key, this.isOnboarding = false});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LocationPickerBloc(
        nominatimService: sl(),
        language: Localizations.localeOf(context).languageCode,
      )..add(const LocationPickerEvent.currentLocationRequested()),
      child: Scaffold(
        body: SafeArea(
          child: LocationPickerViewBodyBlocListener(isOnboarding: isOnboarding),
        ),
      ),
    );
  }
}
