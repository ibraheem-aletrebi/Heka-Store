import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:heka_store/Features/address/data/models/address_model.dart';
import 'package:heka_store/Features/address/presentation/blocs/address/address_bloc.dart';
import 'package:heka_store/Features/address/presentation/components/address/address_card.dart';
import 'package:heka_store/Features/address/presentation/components/address/address_empty_view.dart';
import 'package:heka_store/Features/address/presentation/components/address/address_search_bar.dart';
import 'package:heka_store/core/app/router/app_routes.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_app_bar.dart';
import 'package:heka_store/generated/l10n.dart';

class AddressViewBody extends StatefulWidget {
  const AddressViewBody({super.key});

  @override
  State<AddressViewBody> createState() => _AddressViewBodyState();
}

class _AddressViewBodyState extends State<AddressViewBody> {
  late final TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _navigateToEdit(AddressModel address) async {
    final bool? updated =
        await context.push(AppRoutes.editAddress, extra: address) as bool?;
    if (updated == true && mounted) {
      context.read<AddressBloc>().add(const AddressEvent.reLoaded());
    }
  }

  Future<void> _navigateToAdd() async {
    final bool? added =
        await context.push(AppRoutes.locationPicker) as bool?;
    if (added == true && mounted) {
      context.read<AddressBloc>().add(const AddressEvent.reLoaded());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddressBloc, AddressState>(
      listenWhen: (prev, curr) => prev.error != curr.error,
      listener: (context, state) {
        if (state.error != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error!.failure.message(context)),
            ),
          );
        }
      },
      child: Column(
        children: [
          CustomAppBar(
            onBackPressed: () => context.pop(),
            title: S.of(context).AddressBook,
          ),
          SizedBox(height: AppSizes.h16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.w16),
            child: AddressSearchBar(
              controller: _searchController,
              onChanged: (value) => context
                  .read<AddressBloc>()
                  .add(AddressEvent.searchChanged(value)),
            ),
          ),
          SizedBox(height: AppSizes.h8),
          BlocBuilder<AddressBloc, AddressState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Expanded(
                  child: Center(child: CupertinoActivityIndicator()),
                );
              }

              if (!state.hasAddresses) {
                return Expanded(
                  child: AddressEmptyView(
                    isSearch: false,
                    onAdd: _navigateToAdd,
                  ),
                );
              }

              final filtered = state.filteredAddresses;

              if (filtered.isEmpty) {
                return Expanded(
                  child: AddressEmptyView(
                    isSearch: true,
                    onAdd: () {},
                  ),
                );
              }

              return Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.w16,
                    vertical: AppSizes.h16,
                  ),
                  child: Column(
                    children: List.generate(
                      filtered.length,
                      (index) => Padding(
                        padding: EdgeInsets.only(bottom: AppSizes.h16),
                        child: AddressCard(
                          address: filtered[index],
                          onEdit: () => _navigateToEdit(filtered[index]),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}