import 'package:flutter/cupertino.dart';
import 'package:flutter_web_basic/widgets/navigation_bar/navigation_bar_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'navigation_bar_mobile.dart';

class WebNavigationBar extends StatelessWidget {
  const WebNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const NavigationBarMobile(),
      tablet: const NavigationBarTabletDesktop(),
    );
  }
}
