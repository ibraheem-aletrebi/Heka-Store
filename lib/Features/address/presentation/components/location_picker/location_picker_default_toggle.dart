
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/address/presentation/blocs/location_picker/location_picker_bloc.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';
import 'package:heka_store/generated/l10n.dart';

class LocationPickerDefaultToggle extends StatelessWidget {
  const LocationPickerDefaultToggle({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;

    return BlocBuilder<LocationPickerBloc, LocationPickerState>(
      buildWhen: (previous, current) =>
          previous.isDefault != current.isDefault,
      builder: (context, state) {
        return GestureDetector(
          onTap: () => context
              .read<LocationPickerBloc>()
              .add(const LocationPickerEvent.isDefaultToggled()),
          behavior: HitTestBehavior.opaque,
          child: Row(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                width: 22,
                height: 22,
                decoration: BoxDecoration(
                  color: state.isDefault ? colors.primary : Colors.transparent,
                  border: Border.all(
                    color:
                        state.isDefault ? colors.primary : colors.border,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: state.isDefault
                    ? const Icon(Icons.check, size: 14, color: Colors.white)
                    : null,
              ),
              SizedBox(width: AppSizes.w10),
              Text(
                S.of(context).setAsDefaultAddress,
                style: AppTextStyles.regular14.copyWith(
                  color: colors.textPrimary,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}