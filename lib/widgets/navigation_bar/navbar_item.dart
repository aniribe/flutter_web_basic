import 'package:flutter/cupertino.dart';
import 'package:flutter_web_basic/services/navigation_service.dart';

import '../../config/locator.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;

  const NavBarItem(
      {Key? key, required this.title, required this.navigationPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Text(
        title,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
