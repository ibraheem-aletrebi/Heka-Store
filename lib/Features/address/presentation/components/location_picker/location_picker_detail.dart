
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/address/presentation/blocs/location_picker/location_picker_bloc.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/generated/l10n.dart';

class LocationPickerDetail extends StatelessWidget {
  const LocationPickerDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final textTheme = Theme.of(context).textTheme;

    return BlocBuilder<LocationPickerBloc, LocationPickerState>(
      buildWhen: (previous, current) => previous.address != current.address,
      builder: (context, state) {
        return Row(
          children: [
            Container(
              width: AppSizes.w45,
              height: AppSizes.w45,
              decoration: BoxDecoration(
                color: colors.primarySoft,
                borderRadius: BorderRadius.circular(AppSizes.r12),
              ),
              child: Icon(Icons.location_pin, color: colors.primary, size: 22),
            ),
            SizedBox(width: AppSizes.w12),
            Expanded(
              child: state.address == null
                  ? Row(
                      children: [
                        SizedBox(
                          width: AppSizes.w12,
                          height: AppSizes.w12,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: colors.primary,
                          ),
                        ),
                        SizedBox(width: AppSizes.w8),
                        Text(
                          S.of(context).fetchingAddress,
                          style: textTheme.bodyMedium,
                        ),
                      ],
                    )
                  : Text(
                      state.address!,
                      style: textTheme.titleMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
            ),
          ],
        );
      },
    );
  }
}