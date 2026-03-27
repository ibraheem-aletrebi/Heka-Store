import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:heka_store/Features/address/presentation/blocs/address/address_bloc.dart';
import 'package:heka_store/Features/address/presentation/components/address/address_view_body.dart';
import 'package:heka_store/core/app/router/app_routes.dart';
import 'package:heka_store/core/di/injector.dart';
import 'package:heka_store/generated/l10n.dart';

class AddressView extends StatelessWidget {
  const AddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<AddressBloc>()..add(const AddressEvent.loaded()),
      child: Scaffold(
        body: SafeArea(child: AddressViewBody()),
        floatingActionButton: BlocBuilder<AddressBloc, AddressState>(
          builder: (context, state) => Visibility(
            visible: (context.read<AddressBloc>().state.addresses.isNotEmpty),
            child: FloatingActionButton.extended(
              onPressed: () async {
                final bool? added =
                    await context.push(AppRoutes.locationPicker) as bool?;
                if (added == true && context.mounted) {
                  context.read<AddressBloc>().add(
                    const AddressEvent.reLoaded(),
                  );
                }
              },
              label: Text(S.of(context).addNewAddress),
              icon: Icon(Icons.add),
            ),
          ),
        ),
      ),
    );
  }
}
