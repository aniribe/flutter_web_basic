import 'package:flutter/cupertino.dart';

class NavBarItemModel {
  final String title;
  final String navigationPath;
  final IconData iconData;

  NavBarItemModel({
    required this.title,
    required this.navigationPath,
    required this.iconData,
  });
}
