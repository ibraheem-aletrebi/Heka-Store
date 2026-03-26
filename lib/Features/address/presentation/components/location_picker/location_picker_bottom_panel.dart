import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/address/data/models/address_request_model.dart';
import 'package:heka_store/Features/address/presentation/blocs/address/address_bloc.dart';
import 'package:heka_store/Features/address/presentation/blocs/location_picker/location_picker_bloc.dart';
import 'package:heka_store/Features/address/presentation/components/location_picker/location_picker_default_toggle.dart';
import 'package:heka_store/Features/address/presentation/components/location_picker/location_picker_detail.dart';
import 'package:heka_store/Features/address/presentation/components/location_picker/location_picker_nickname_selector.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';
import 'package:heka_store/core/widgets/custom_button/custom_button.dart';
import 'package:heka_store/generated/l10n.dart';

class LocationPickerBottomPanel extends StatelessWidget {
  const LocationPickerBottomPanel({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final bottomPadding = MediaQuery.of(context).padding.bottom + AppSizes.h16;
    final s = S.of(context);

    return BlocBuilder<LocationPickerBloc, LocationPickerState>(
      builder: (context, locationState) {
        return Container(
          decoration: BoxDecoration(
            color: colors.background,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(AppSizes.r24),
            ),
          ),
          padding: EdgeInsets.fromLTRB(
            AppSizes.w20,
            AppSizes.h16,
            AppSizes.w20,
            bottomPadding,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _DragHandle(),

              if (locationState.hasLocation) ...[
                const LocationPickerDetail(),
                SizedBox(height: AppSizes.h20),
              ],

              if (locationState.hasLocation) ...[
                Text(
                  s.addressNickName,
                  style: AppTextStyles.semiBold14.copyWith(
                    color: colors.textPrimary,
                  ),
                ),
                SizedBox(height: AppSizes.h8),
                const LocationPickerNicknameSelector(),
                SizedBox(height: AppSizes.h16),
              ],

              // ─── Phone Number ─────────────────────────
              if (locationState.hasLocation) ...[
                Text(
                  s.phoneNumber,
                  style: AppTextStyles.semiBold14.copyWith(
                    color: colors.textPrimary,
                  ),
                ),
                SizedBox(height: AppSizes.h8),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  onChanged: (value) => context
                      .read<LocationPickerBloc>()
                      .add(LocationPickerEvent.phoneNumberChanged(value)),
                  decoration: InputDecoration(
                    hintText: s.enterPhoneNumber,
                  ),
                ),
                SizedBox(height: AppSizes.h16),
              ],

              if (locationState.hasLocation) ...[
                const LocationPickerDefaultToggle(),
                SizedBox(height: AppSizes.h20),
              ],

              BlocBuilder<AddressBloc, AddressState>(
                buildWhen: (previous, current) =>
                    previous.isAddLoading != current.isAddLoading,
                builder: (context, addressState) {
                  final isLoading =
                      locationState.isLoadingLocation ||
                      addressState.isAddLoading;

                  return CustomButton(
                    isLoading: isLoading,
                    text: s.confirmLocation,
                    onPressed: locationState.hasLocation && !isLoading
                        ? () => _onConfirm(context, locationState)
                        : null,
                  );
                },
              ),
              SizedBox(height: AppSizes.h8),

              Center(
                child: TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    s.skipForNow,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _onConfirm(BuildContext context, LocationPickerState locationState) {
    context.read<AddressBloc>().add(
      AddressEvent.added(
        AddressRequestModel(
          nickname: locationState.nickname.isNotEmpty
              ? locationState.nickname
              : 'My Address',
          fullAddress:
              locationState.address ?? locationState.formattedCoordinates,
          latitude: locationState.latitude!,
          longitude: locationState.longitude!,
          isDefault: locationState.isDefault,
          phoneNumber: locationState.phoneNumber.trim().isEmpty
              ? null
              : locationState.phoneNumber.trim(),
        ),
      ),
    );
  }
}

class _DragHandle extends StatelessWidget {
  const _DragHandle();

  @override
  Widget build(BuildContext context) => Align(
    alignment: Alignment.center,
    child: Container(
      width: AppSizes.w40,
      height: 4,
      margin: EdgeInsets.only(bottom: AppSizes.h16),
      decoration: BoxDecoration(
        color: context.myColors.divider,
        borderRadius: BorderRadius.circular(2),
      ),
    ),
  );
}