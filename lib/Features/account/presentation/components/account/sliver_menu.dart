import 'package:flutter/material.dart';
import 'package:heka_store/Features/account/presentation/components/account/menu_item.dart';

class SliverMenu extends StatefulWidget {
  const SliverMenu({super.key});

  @override
  State<SliverMenu> createState() => _SliverMenuState();
}

class _SliverMenuState extends State<SliverMenu> {
  final List<Widget> menuItems = [
    MenuItem(
      icon: Icons.shopping_bag_outlined,
      label: 'My Orders',
      onTap: () {
        // context.push(MyOrdersView());
      },
    ),
    MenuItem(
      icon: Icons.home_outlined,
      label: 'Address Book',
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     // builder: (_) => const AddressManagementScreen(),
        //   ),
        // );
      },
    ),
    MenuItem(
      icon: Icons.credit_card_outlined,
      label: 'Payment Methods',
      onTap: () {},
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
