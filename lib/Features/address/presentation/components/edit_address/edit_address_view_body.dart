import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/address/data/models/address_model.dart';
import 'package:heka_store/Features/address/presentation/blocs/location_picker/location_picker_bloc.dart';
import 'package:heka_store/Features/address/presentation/components/edit_address/edit_address_bottom_panel.dart';
import 'package:heka_store/Features/address/presentation/components/location_picker/location_picker_gps_button.dart';
import 'package:heka_store/Features/address/presentation/components/location_picker/location_picker_map.dart';
import 'package:heka_store/Features/address/presentation/components/location_picker/location_picker_top_overlay.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:latlong2/latlong.dart';

class EditAddressViewBody extends StatelessWidget {
  final AddressModel address;

  const EditAddressViewBody({super.key, required this.address});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationPickerBloc, LocationPickerState>(
      builder: (context, state) {
        return Stack(
          children: [
            // ─── Map (reuses the same widget from add flow) ───────
            Positioned.fill(
              child: LocationPickerMap(
                selectedLat: state.latitude,
                selectedLng: state.longitude,
                onTap: (LatLng latLng) => context
                    .read<LocationPickerBloc>()
                    .add(LocationPickerEvent.mapTapped(
                      latLng.latitude,
                      latLng.longitude,
                    )),
              ),
            ),

            // ─── Top search overlay (reused) ──────────────────────
            const Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: LocationPickerTopOverlay(),
            ),

            // ─── GPS button ───────────────────────────────────────
            AnimatedPositioned(
              duration: const Duration(milliseconds: 350),
              curve: Curves.easeOutCubic,
              right: AppSizes.w16,
              // always show in the "has location" position since edit mode
              // always starts with a location selected
              bottom: MediaQuery.sizeOf(context).height * 0.46,
              child: LocationPickerGpsButton(
                isLoading: state.isLoadingLocation,
                onTap: () => context
                    .read<LocationPickerBloc>()
                    .add(const LocationPickerEvent.currentLocationRequested()),
              ),
            ),

            // ─── Edit bottom panel (always visible) ───────────────
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: EditAddressBottomPanel(address: address),
            ),
          ],
        );
      },
    );
  }
}