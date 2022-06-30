import 'package:flutter/material.dart';
import 'package:flutter_web_basic/views/home/home_content_desktop.dart';
import 'package:flutter_web_basic/views/home/home_content_mobile.dart';
import 'package:flutter_web_basic/widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter_web_basic/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../widgets/centered_view/centered_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? const NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: [
              const WebNavigationBar(),
              Expanded(
                  child: ScreenTypeLayout(
                mobile: const HomeContentMobile(),
                desktop: const HomeContentDesktop(),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
