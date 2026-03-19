
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/address/presentation/blocs/location_picker/location_picker_bloc.dart';
import 'package:heka_store/Features/address/presentation/components/location_picker/location_picker_detail.dart';
import 'package:heka_store/Features/address/presentation/components/location_picker/location_picker_default_toggle.dart';
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
    final bottomPadding =
        MediaQuery.of(context).padding.bottom + AppSizes.h16;
    final s = S.of(context);

    return BlocBuilder<LocationPickerBloc, LocationPickerState>(
      builder: (context, state) {
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

              if (state.hasLocation) ...[
                const LocationPickerDetail(),
                SizedBox(height: AppSizes.h20),
              ],

              if (state.hasLocation) ...[
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

              if (state.hasLocation) ...[
                const LocationPickerDefaultToggle(),
                SizedBox(height: AppSizes.h20),
              ],

              CustomButton(
                isLoading: state.isLoadingLocation,
                text: s.confirmLocation,
                onPressed: state.hasLocation && !state.isLoadingLocation
                    ? () => context
                        .read<LocationPickerBloc>()
                        .add(const LocationPickerEvent.locationConfirmed())
                    : null,
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