
import 'package:flutter/material.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';

class LocationPickerMarker extends StatelessWidget {
  const LocationPickerMarker({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.location_pin,
      color: context.myColors.primary,
      size: AppSizes.w48,
    );
  }
}