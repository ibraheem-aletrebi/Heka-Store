
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/address/presentation/blocs/location_picker/location_picker_bloc.dart';
import 'package:heka_store/Features/address/presentation/components/location_picker/location_picker_result_item.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/services/nominatim/nominatim_place.dart';
import 'package:heka_store/core/widgets/search_field.dart';
import 'package:heka_store/core/widgets/search_result_drop_down.dart';
import 'package:heka_store/generated/l10n.dart';

class LocationPickerSearchBar extends StatefulWidget {
  const LocationPickerSearchBar({super.key});

  @override
  State<LocationPickerSearchBar> createState() =>
      _LocationPickerSearchBarState();
}

class _LocationPickerSearchBarState extends State<LocationPickerSearchBar> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController()..addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _clear() {
    _controller.clear();
    context
        .read<LocationPickerBloc>()
        .add(const LocationPickerEvent.searchCleared());
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;

    return Column(
      children: [
        SearchField(
          controller: _controller,
          hintText: S.of(context).searchForLocation,
          prefixIcon: Icons.search,
          suffixIcon: _controller.text.isNotEmpty
              ? IconButton(
                  icon: Icon(Icons.close, color: colors.textHint, size: 18),
                  onPressed: _clear,
                )
              : null,
          onChanged: (value) => context
              .read<LocationPickerBloc>()
              .add(LocationPickerEvent.searchChanged(value)),
        ),
        BlocBuilder<LocationPickerBloc, LocationPickerState>(
          buildWhen: (previous, current) =>
              previous.searchResults != current.searchResults ||
              previous.isSearching != current.isSearching,
          builder: (context, state) {
            return SearchResultsDropdown<NominatimPlace>(
              isVisible: _controller.text.isNotEmpty,
              results: state.searchResults,
              isLoading: state.isSearching,
              showEmptyResults: _controller.text.isNotEmpty &&
                  !state.hasLocation &&
                  state.searchResults.isEmpty,
              emptyMessage: S.of(context).noResultsFound,
              itemBuilder: (_, place, __) => LocationPickerResultItem(
                place: place,
                onTap: () {
                  _controller.text = place.shortName;
                  context
                      .read<LocationPickerBloc>()
                      .add(LocationPickerEvent.placeSelected(place));
                },
              ),
            );
          },
        ),
      ],
    );
  }
}