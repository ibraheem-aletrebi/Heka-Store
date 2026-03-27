import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/address/presentation/blocs/location_picker/location_picker_bloc.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';
import 'package:heka_store/core/widgets/custom_text_form_field.dart';
import 'package:heka_store/generated/l10n.dart';

class LocationPickerNicknameSelector extends StatefulWidget {
  /// Pre-selected nickname when editing an existing address.
  /// Pass null (or omit) in add mode.
  final String? initialNickname;

  const LocationPickerNicknameSelector({
    super.key,
    this.initialNickname,
  });

  @override
  State<LocationPickerNicknameSelector> createState() =>
      _LocationPickerNicknameSelectorState();
}

class _LocationPickerNicknameSelectorState
    extends State<LocationPickerNicknameSelector> {
  static const _chips = [('🏠', 'home'), ('🏢', 'work'), ('📍', 'other')];

  final _customCtrl = TextEditingController();
  String? _selected;
  bool _showCustom = false;

  @override
  void initState() {
    super.initState();
    _initFromNickname(widget.initialNickname);
  }

  void _initFromNickname(String? nickname) {
    if (nickname == null || nickname.isEmpty) return;

    final knownKeys = _chips.map((c) => c.$2).toList();
    final matchedKey = knownKeys.firstWhere(
      (key) => key.toLowerCase() == nickname.toLowerCase(),
      orElse: () => '',
    );

    if (matchedKey.isNotEmpty) {
      _selected = matchedKey;
    } else {
      _showCustom = true;
      _customCtrl.text = nickname;
    }
  }

  String _chipLabel(BuildContext context, String key) {
    final s = S.of(context);
    switch (key) {
      case 'home':
        return s.home;
      case 'work':
        return s.work;
      case 'other':
        return s.other;
      default:
        return key;
    }
  }

  void _selectChip(BuildContext context, String key, String label) {
    setState(() {
      if (_selected == key) {
        _selected = null;
        context
            .read<LocationPickerBloc>()
            .add(const LocationPickerEvent.nicknameChanged(''));
      } else {
        _selected = key;
        _showCustom = false;
        _customCtrl.clear();
        context
            .read<LocationPickerBloc>()
            .add(LocationPickerEvent.nicknameChanged(label));
      }
    });
  }

  void _toggleCustom(BuildContext context) {
    setState(() {
      _showCustom = !_showCustom;
      _selected = null;
      if (!_showCustom) {
        _customCtrl.clear();
        context
            .read<LocationPickerBloc>()
            .add(const LocationPickerEvent.nicknameChanged(''));
      }
    });
  }

  @override
  void dispose() {
    _customCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final s = S.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ..._chips.map((chip) {
              final (icon, key) = chip;
              final label = _chipLabel(context, key);
              final isSelected = _selected == key;

              return Padding(
                padding: EdgeInsets.only(right: AppSizes.w8),
                child: GestureDetector(
                  onTap: () => _selectChip(context, key, label),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 180),
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSizes.w14,
                      vertical: AppSizes.h8,
                    ),
                    decoration: BoxDecoration(
                      color: isSelected ? colors.primary : colors.surface,
                      border: Border.all(
                        color: isSelected ? colors.primary : colors.border,
                      ),
                      borderRadius: BorderRadius.circular(AppSizes.r20),
                    ),
                    child: Text(
                      '$icon  $label',
                      style: AppTextStyles.regular13.copyWith(
                        color: isSelected
                            ? Colors.white
                            : colors.textSecondary,
                        fontWeight: isSelected
                            ? FontWeight.w600
                            : FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              );
            }),

            GestureDetector(
              onTap: () => _toggleCustom(context),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 180),
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.w14,
                  vertical: AppSizes.h8,
                ),
                decoration: BoxDecoration(
                  color: _showCustom ? colors.primary : colors.surface,
                  border: Border.all(
                    color: _showCustom ? colors.primary : colors.border,
                  ),
                  borderRadius: BorderRadius.circular(AppSizes.r20),
                ),
                child: Icon(
                  Icons.edit_outlined,
                  size: 16,
                  color: _showCustom ? Colors.white : colors.textSecondary,
                ),
              ),
            ),
          ],
        ),

        AnimatedCrossFade(
          duration: const Duration(milliseconds: 200),
          crossFadeState: _showCustom
              ? CrossFadeState.showSecond
              : CrossFadeState.showFirst,
          firstChild: const SizedBox.shrink(),
          secondChild: Padding(
            padding: EdgeInsets.only(top: AppSizes.h12),
            child: CustomTextFormField(
              controller: _customCtrl,
              hint: s.nicknameHint,
              onChanged: (value) => context
                  .read<LocationPickerBloc>()
                  .add(LocationPickerEvent.nicknameChanged(value)),
            ),
          ),
        ),
      ],
    );
  }
}