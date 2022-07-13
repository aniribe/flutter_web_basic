import 'package:flutter/material.dart';
import 'package:flutter_web_basic/config/routing/route_names.dart';
import 'package:flutter_web_basic/constants/app_colors.dart';
import 'package:flutter_web_basic/widgets/navigation_drawer/navigation_drawer_header.dart';
import '../navbar_item/navbar_item.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: const [
          //TODO check shadow
          BoxShadow(
            color: Colors.black12,
            blurRadius: 16,
          ),
        ],
      ),
      child: Column(
        children: const [
          NavigationDrawerHeader(),
          NavBarItem(
            title: 'Episodes',
            icon: Icons.videocam,
            navigationPath: RouteNames.episodesRoute,
          ),
          NavBarItem(
            title: 'About',
            icon: Icons.help,
            navigationPath: RouteNames.aboutRoute,
          ),
        ],
      ),
    );
  }
}
