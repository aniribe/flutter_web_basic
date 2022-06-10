import 'package:flutter/cupertino.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName) async {
    return navigatorKey.currentState?.pushNamed(routeName);
  }

  Future<void> goBack() async {
    navigatorKey.currentState?.pop();
  }
}
