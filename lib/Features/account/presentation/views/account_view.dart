import 'package:flutter/material.dart';
import 'package:heka_store/Features/account/presentation/components/account/account_view_app_bar.dart';
import 'package:heka_store/Features/account/presentation/components/account/logout_button.dart';
import 'package:heka_store/Features/account/presentation/components/account/profile_header.dart';
import 'package:heka_store/Features/account/presentation/components/account/sliver_menu.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_text_form_field.dart';
import 'package:heka_store/core/widgets/user_avater.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: AccountViewAppBar()),
        SliverToBoxAdapter(child: ProfileHeader()),
        SliverToBoxAdapter(child: Divider(thickness: AppSizes.h8)),
        SliverMenu(),
        SliverToBoxAdapter(child: Divider(thickness: AppSizes.h8)),
        SliverToBoxAdapter(child: LogoutButton()),
      ],
    );
  }
}

