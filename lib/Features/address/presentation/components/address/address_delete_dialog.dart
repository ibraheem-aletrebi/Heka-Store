import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/address/data/models/address_model.dart';
import 'package:heka_store/Features/address/presentation/blocs/address/address_bloc.dart';
import 'package:heka_store/core/di/injector.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_button/custom_button.dart';
import 'package:heka_store/generated/l10n.dart';

class AddressDeleteDialog extends StatelessWidget {
  final AddressModel address;
  const AddressDeleteDialog({super.key, required this.address});

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final s = S.of(context);
    final textTheme = TextTheme.of(context);
    return BlocProvider(
      create: (context) => sl<AddressBloc>(),
      child: Builder(
        builder: (context) => Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.w32),
            child: Container(
              padding: EdgeInsets.all(AppSizes.w24),
              decoration: BoxDecoration(
                color: colors.surface,
                borderRadius: BorderRadius.circular(AppSizes.r16),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: AppSizes.w60,
                    height: AppSizes.w60,
                    decoration: BoxDecoration(
                      color: colors.error.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(AppSizes.r16),
                    ),
                    child: Icon(
                      Icons.delete_rounded,
                      color: colors.error,
                      size: AppSizes.sp28,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    s.deleteAddressTitle,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    s.deleteAddressMessage(address.fullAddress),
                    textAlign: TextAlign.center,
                    style: textTheme.bodySmall,
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          text: s.cancel,
                          backgroundColor: colors.primarySoft,
                          onPressed: () => Navigator.pop(context, false),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: CustomButton(
                          text: s.delete,
                          backgroundColor: colors.error,
                          onPressed: () {
                            context.read<AddressBloc>().add(
                              AddressEvent.deleted(address.id),
                            );
                            Navigator.pop(context, true);
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
