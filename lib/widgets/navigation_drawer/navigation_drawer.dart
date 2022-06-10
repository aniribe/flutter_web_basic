import 'package:flutter/material.dart';
import 'package:flutter_web_basic/config/routing/route_names.dart';
import 'package:flutter_web_basic/constants/app_colors.dart';
import 'package:flutter_web_basic/widgets/navigation_drawer/drawer_item.dart';
import 'package:flutter_web_basic/widgets/navigation_drawer/navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 16,
          ),
        ],
      ),
      child: Column(
        children: const [
          NavigationDrawerHeader(),
          DrawerItem(
            title: 'Episodes',
            icon: Icons.videocam,
            navigationPath: RouteNames.episodesRoute,
          ),
          DrawerItem(
            title: 'About',
            icon: Icons.help,
            navigationPath: RouteNames.aboutRoute,
          ),
        ],
      ),
    );
  }
}
