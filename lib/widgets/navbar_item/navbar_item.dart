import 'package:flutter/cupertino.dart';
import 'package:flutter_web_basic/services/navigation_service.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../config/locator.dart';
import '../../datamodels/navbar_item_model.dart';
import 'navbar_item_desktop.dart';
import 'navbar_item_mobile.dart';
import '../../extensions/hover_extensions.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  final IconData icon;

  const NavBarItem({
    Key? key,
    required this.title,
    required this.navigationPath,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var model = NavBarItemModel(
      title: title,
      navigationPath: navigationPath,
      iconData: icon,
    );

    return GestureDetector(
        onTap: () {
          locator<NavigationService>().navigateTo(navigationPath);
        },
        child: Provider.value(
          value: model,
          child: ScreenTypeLayout(
            tablet: NavBarItemTabletDesktop(),
            mobile: NavBarItemMobile(),
          ).showCursorOnHover.moveUpOnHover,
        ));
  }
}
