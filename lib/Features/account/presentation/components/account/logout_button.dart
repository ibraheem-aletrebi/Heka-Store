import 'package:flutter/material.dart';
import 'package:heka_store/Features/account/presentation/components/account/menu_item.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MenuItem(
      icon: Icons.logout,
      label: 'Logout',
      onTap: () {},
      textColor: Colors.red,
      iconColor: Colors.red,
      trailingIcon: null,
    );
  }
}
