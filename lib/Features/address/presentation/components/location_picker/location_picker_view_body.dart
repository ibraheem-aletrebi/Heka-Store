import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/address/presentation/blocs/location_picker/location_picker_bloc.dart';
import 'package:heka_store/Features/address/presentation/components/location_picker/location_picker_bottom_panel.dart';
import 'package:heka_store/Features/address/presentation/components/location_picker/location_picker_gps_button.dart';
import 'package:heka_store/Features/address/presentation/components/location_picker/location_picker_map.dart';
import 'package:heka_store/Features/address/presentation/components/location_picker/location_picker_top_overlay.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:latlong2/latlong.dart';

class LocationPickerViewBody extends StatelessWidget {
  const LocationPickerViewBody({super.key, required this.isOnboarding});
  final bool isOnboarding;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationPickerBloc, LocationPickerState>(
      builder: (context, state) {
        return Stack(
          children: [
            Positioned.fill(
              child: LocationPickerMap(
                selectedLat: state.latitude,
                selectedLng: state.longitude,
                onTap: (LatLng latLng) =>
                    context.read<LocationPickerBloc>().add(
                      LocationPickerEvent.mapTapped(
                        latLng.latitude,
                        latLng.longitude,
                      ),
                    ),
              ),
            ),
            const Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: LocationPickerTopOverlay(),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 350),
              curve: Curves.easeOutCubic,
              right: AppSizes.w16,
              bottom: state.hasLocation
                  ? MediaQuery.sizeOf(context).height * 0.46
                  : AppSizes.h32,
              child: LocationPickerGpsButton(
                isLoading: state.isLoadingLocation,
                onTap: () => context.read<LocationPickerBloc>().add(
                  const LocationPickerEvent.currentLocationRequested(),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 350),
              curve: Curves.easeOutCubic,
              left: 0,
              right: 0,
              bottom: state.hasLocation && !state.isSearchFocused
                  ? MediaQuery.of(context).viewInsets.bottom
                  : -300,
              child: LocationPickerBottomPanel(isOnboarding: isOnboarding),
            ),
          ],
        );
      },
    );
  }
}
