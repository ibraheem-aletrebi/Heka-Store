
import 'package:flutter/material.dart';
import 'package:heka_store/Features/address/presentation/components/location_picker/location_picker_search_bar.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/generated/l10n.dart';

class LocationPickerTopOverlay extends StatelessWidget {
  const LocationPickerTopOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final textTheme = Theme.of(context).textTheme;
    final translate = S.of(context);

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            colors.background.withValues(alpha: 0.98),
            colors.background.withValues(alpha: 0.92),
            colors.background.withValues(alpha: 0.0),
          ],
          stops: const [0.0, 0.7, 1.2],
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            AppSizes.w16,
            AppSizes.h12,
            AppSizes.w16,
            AppSizes.h24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                translate.selectLocationTitle,
                style: textTheme.headlineLarge,
              ),
              SizedBox(height: AppSizes.h2),
              Text(
                translate.selectLocationSubtitle,
                style: textTheme.bodyLarge,
              ),
              SizedBox(height: AppSizes.h12),
              const LocationPickerSearchBar(),
            ],
          ),
        ),
      ),
    );
  }
}