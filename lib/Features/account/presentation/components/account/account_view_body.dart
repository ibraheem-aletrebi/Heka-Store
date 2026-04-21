import 'package:flutter/material.dart';
import 'package:heka_store/Features/account/presentation/components/account/account_view_app_bar.dart';
import 'package:heka_store/Features/account/presentation/components/account/profile_header.dart';
import 'package:heka_store/Features/account/presentation/components/account/sliver_menu.dart';
import 'package:heka_store/core/resources/app_sizes.dart';

class AccountViewBody extends StatelessWidget {
  const AccountViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: AccountViewAppBar()),
        SliverToBoxAdapter(child: ProfileHeader()),
        SliverToBoxAdapter(child: Divider(thickness: AppSizes.h8)),
        SliverMenu(),
        SliverToBoxAdapter(child: SizedBox(height: AppSizes.h100)),
      ],
    );
  }
}
