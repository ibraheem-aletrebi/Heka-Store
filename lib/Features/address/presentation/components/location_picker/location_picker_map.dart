
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:heka_store/Features/address/presentation/components/location_picker/location_picker_marker.dart';
import 'package:heka_store/core/blocs/language/language_bloc.dart';
import 'package:latlong2/latlong.dart';

class LocationPickerMap extends StatefulWidget {
  final double? selectedLat;
  final double? selectedLng;
  final void Function(LatLng) onTap;

  const LocationPickerMap({
    super.key,
    required this.selectedLat,
    required this.selectedLng,
    required this.onTap,
  });

  @override
  State<LocationPickerMap> createState() => _LocationPickerMapState();
}

class _LocationPickerMapState extends State<LocationPickerMap> {
  final MapController _mapController = MapController();

  static const _defaultCenter = LatLng(26.8206, 30.8025);
  static const _defaultZoom = 6.0;
  static const _selectedZoom = 15.0;
  static const _tileUrl = 'https://tile.openstreetmap.org/{z}/{x}/{y}.png';

  LatLng? get _selectedLocation => widget.selectedLat != null &&
          widget.selectedLng != null
      ? LatLng(widget.selectedLat!, widget.selectedLng!)
      : null;

  @override
  void didUpdateWidget(LocationPickerMap oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_selectedLocation != null &&
        (oldWidget.selectedLat != widget.selectedLat ||
            oldWidget.selectedLng != widget.selectedLng)) {
      _mapController.move(_selectedLocation!, _selectedZoom);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageBloc, LanguageState>(
      buildWhen: (previous, current) =>
          previous.languageCode != current.languageCode,
      builder: (context, langState) {
        return FlutterMap(
          mapController: _mapController,
          options: MapOptions(
            initialCenter: _selectedLocation ?? _defaultCenter,
            initialZoom:
                _selectedLocation != null ? _selectedZoom : _defaultZoom,
            onTap: (_, latLng) => widget.onTap(latLng),
            interactionOptions: const InteractionOptions(
              flags: InteractiveFlag.all & ~InteractiveFlag.rotate,
            ),
          ),
          children: [
            TileLayer(
              urlTemplate: _tileUrl,
              userAgentPackageName: 'com.heka.app',
              key: ValueKey(langState.languageCode),
            ),
            if (_selectedLocation != null)
              MarkerLayer(
                markers: [
                  Marker(
                    point: _selectedLocation!,
                    child: const LocationPickerMarker(),
                  ),
                ],
              ),
          ],
        );
      },
    );
  }
}