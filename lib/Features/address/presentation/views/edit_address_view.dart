import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/address/data/models/address_model.dart';
import 'package:heka_store/Features/address/presentation/blocs/address/address_bloc.dart';
import 'package:heka_store/Features/address/presentation/blocs/location_picker/location_picker_bloc.dart';
import 'package:heka_store/Features/address/presentation/components/edit_address/edit_address_view_body_bloc_listener.dart';
import 'package:heka_store/core/di/injector.dart';

class EditAddressView extends StatelessWidget {
  final AddressModel address;

  const EditAddressView({super.key, required this.address});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => LocationPickerBloc(nominatimService: sl()),
            // ..add(LocationPickerEvent.editAddressLoaded(address)),
        ),
        BlocProvider(create: (_) => sl<AddressBloc>()),
      ],
      child: Scaffold(
        body: SafeArea(
          child: EditAddressViewBodyBlocListener(address: address),
        ),
      ),
    );
  }
}