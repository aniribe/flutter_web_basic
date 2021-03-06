import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_basic/config/routing/route_names.dart';
import '../navbar_item/navbar_item.dart';
import 'navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              NavBarItem(
                title: 'Episodes',
                icon: Icons.videocam,
                navigationPath: RouteNames.episodesRoute,
              ),
              SizedBox(width: 60),
              NavBarItem(
                title: 'About',
                icon: Icons.help,
                navigationPath: RouteNames.aboutRoute,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
