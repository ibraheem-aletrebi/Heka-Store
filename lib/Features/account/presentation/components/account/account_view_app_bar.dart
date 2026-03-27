import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/home/presentation/blocs/main_layout/main_layout_bloc.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_icon_button.dart';
import 'package:heka_store/core/widgets/notification_button.dart';
import 'package:heka_store/generated/l10n.dart';

class AccountViewAppBar extends StatelessWidget {
  const AccountViewAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.w16,
            vertical: AppSizes.h12,
          ),
          child: Row(
            children: [
              CustomIconButton(
                onPressed: () => context.read<MainLayoutBloc>().add(
                  const MainLayoutEvent.changePage(0),
                ),
                icon: Icons.chevron_left_rounded,
              ),
              Expanded(
                child: Text(
                  S.of(context).account,
                  style: textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
              ),
              NotificationButton(),
            ],
          ),
        ),
        Divider(height: 2),
      ],
    );
  }
}
