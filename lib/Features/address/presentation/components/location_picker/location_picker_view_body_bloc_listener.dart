import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:heka_store/Features/address/presentation/blocs/address/address_bloc.dart';
import 'package:heka_store/Features/address/presentation/blocs/location_picker/location_picker_bloc.dart';
import 'package:heka_store/Features/address/presentation/components/location_picker/location_picker_view_body.dart';
import 'package:heka_store/core/app/router/app_routes.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';
import 'package:heka_store/generated/l10n.dart';

class LocationPickerViewBodyBlocListener extends StatelessWidget {
  const LocationPickerViewBodyBlocListener({
    super.key,
    this.isOnboarding = false,
  });
  final bool isOnboarding;

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<LocationPickerBloc, LocationPickerState>(
          listenWhen: (previous, current) =>
              previous.isPermissionDenied != current.isPermissionDenied ||
              previous.isPermissionDeniedForever !=
                  current.isPermissionDeniedForever ||
              previous.errorMessage != current.errorMessage,
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
        BlocListener<AddressBloc, AddressState>(
          listenWhen: (previous, current) =>
              previous.isAddSuccess != current.isAddSuccess ||
              previous.error != current.error,
          listener: (context, state) {
            if (state.isAddSuccess) {
              if (isOnboarding) {
                context.go(AppRoutes.mainLayout);
              } else {
                context.pop();
              }
            }
            if (state.error != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    state.error!.serverMessage ??
                        state.error!.failure.message(context),
                  ),
                ),
              );
            }
          },
        ),
      ],
      child: LocationPickerViewBody(),
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
        backgroundColor: isError
            ? context.myColors.error
            : context.myColors.success,
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
