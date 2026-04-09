import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:heka_store/Features/account/presentation/components/account/menu_item.dart';
import 'package:heka_store/Features/order/presentation/blocs/my_orders/my_orders_bloc.dart';
import 'package:heka_store/Features/order/presentation/views/my_orders_screen.dart';
import 'package:heka_store/core/app/router/app_routes.dart';
import 'package:heka_store/core/di/injector.dart';

class SliverMenu extends StatefulWidget {
  const SliverMenu({super.key});

  @override
  State<SliverMenu> createState() => _SliverMenuState();
}

class _SliverMenuState extends State<SliverMenu> {
  List<Widget> get menuItems => [
    MenuItem(
      icon: Icons.shopping_bag_outlined,
      label: 'My Orders',
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BlocProvider(
              create: (context) => sl<MyOrdersBloc>(),
              child: const MyOrdersScreen(),
            ),
          ),
        );
      },
    ),
    MenuItem(
      icon: Icons.home_outlined,
      label: 'Address Book',
      onTap: () {
        context.push(AppRoutes.addresses);
      },
    ),
    MenuItem(
      icon: Icons.notifications_outlined,
      label: 'Notifications',
      onTap: () {},
    ),
    MenuItem(icon: Icons.help_outline, label: 'FAQs', onTap: () {}),
    MenuItem(icon: Icons.headphones, label: 'Help Center', onTap: () {}),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (context, index) => menuItems[index],
      itemCount: menuItems.length,
      separatorBuilder: (context, index) => const Divider(thickness: 2),
    );
  }
}
