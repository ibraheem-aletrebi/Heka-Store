import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/address/data/models/address_model.dart';
import 'package:heka_store/Features/address/presentation/blocs/address/address_bloc.dart';
import 'package:heka_store/Features/address/presentation/blocs/location_picker/location_picker_bloc.dart';
import 'package:heka_store/Features/address/presentation/components/edit_address/edit_address_view_body.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';
import 'package:heka_store/generated/l10n.dart';

class EditAddressViewBodyBlocListener extends StatelessWidget {
  final AddressModel address;

  const EditAddressViewBodyBlocListener({super.key, required this.address});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        // ─── Location errors / permission ──────────────────────
        BlocListener<LocationPickerBloc, LocationPickerState>(
          listenWhen: (prev, curr) =>
              prev.isPermissionDenied != curr.isPermissionDenied ||
              prev.isPermissionDeniedForever != curr.isPermissionDeniedForever ||
              prev.errorMessage != curr.errorMessage,
          listener: (context, state) {
            if (state.isPermissionDenied) {
              _showSnackBar(
                context,
                message: S.of(context).locationPermissionDenied,
                isError: true,
              );
            }
            if (state.isPermissionDeniedForever) {
              _showPermissionDialog(context);
            }
            if (state.errorMessage != null) {
              _showSnackBar(
                context,
                message: state.errorMessage!,
                isError: true,
              );
            }
          },
        ),

        // ─── Address update success / error ────────────────────
        BlocListener<AddressBloc, AddressState>(
          listenWhen: (prev, curr) =>
              prev.isUpdateSuccess != curr.isUpdateSuccess ||
              prev.error != curr.error,
          listener: (context, state) {
            if (state.isUpdateSuccess) {
              // Pop with true so the list knows to refresh
              Navigator.of(context).pop(true);
            }
            if (state.error != null) {
              _showSnackBar(
                context,
                message: state.error!.serverMessage ??
                    state.error!.failure.message(context),
                isError: true,
              );
            }
          },
        ),
      ],
      child: EditAddressViewBody(address: address),
    );
  }

  void _showSnackBar(
    BuildContext context, {
    required String message,
    required bool isError,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor:
            isError ? context.myColors.error : context.myColors.success,
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.only(
          bottom: 200,
          left: AppSizes.w16,
          right: AppSizes.w16,
        ),
      ),
    );
  }

  void _showPermissionDialog(BuildContext context) {
    final t = S.of(context);
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.r16),
        ),
        title: Text(t.permissionRequired, style: AppTextStyles.bold16),
        content: Text(
          t.locationPermissionDeniedForever,
          style: AppTextStyles.regular14,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(t.cancel),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: Text(t.openSettings),
          ),
        ],
      ),
    );
  }
}