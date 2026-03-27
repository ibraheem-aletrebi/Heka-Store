import 'package:flutter/cupertino.dart';
IconData addressIconOf(String nickname) {
  switch (nickname.toLowerCase()) {
    case 'home':
      return CupertinoIcons.home;
    case 'work':
      return CupertinoIcons.briefcase;
    default:
      return CupertinoIcons.location;
  }
}
