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
  late final FocusNode _focusNode; // ✅ جديد

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController()..addListener(() => setState(() {}));

    // ✅ جديد: مراقبة الـ focus عشان نبعت event للـ bloc
    _focusNode = FocusNode()
      ..addListener(() {
        if (_focusNode.hasFocus) {
          context.read<LocationPickerBloc>().add(
            const LocationPickerEvent.searchFocused(),
          );
        } else {
          context.read<LocationPickerBloc>().add(
            const LocationPickerEvent.searchUnfocused(),
          );
        }
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose(); // ✅ جديد
    super.dispose();
  }

  void _clear() {
    _controller.clear();
    _focusNode.unfocus(); // ✅ جديد
    context.read<LocationPickerBloc>().add(
      const LocationPickerEvent.searchCleared(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    return Column(
      children: [
        SearchField(
          controller: _controller,
          focusNode: _focusNode, // ✅ جديد
          hintText: S.of(context).searchForLocation,
          prefixIcon: Icons.search,
          suffixIcon: _controller.text.isNotEmpty
              ? IconButton(
                  icon: Icon(Icons.close, color: colors.textHint, size: 18),
                  onPressed: _clear,
                )
              : null,
          onChanged: (value) => context.read<LocationPickerBloc>().add(
            LocationPickerEvent.searchChanged(value),
          ),
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
              showEmptyResults:
                  _controller.text.isNotEmpty &&
                  !state.hasLocation &&
                  state.searchResults.isEmpty,
              emptyMessage: S.of(context).noResultsFound,
              itemBuilder: (_, place, __) => LocationPickerResultItem(
                place: place,
                onTap: () {
                  _controller.text = place.shortName;
                  _focusNode.unfocus(); // ✅ جديد
                  context.read<LocationPickerBloc>().add(
                    LocationPickerEvent.placeSelected(place),
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}