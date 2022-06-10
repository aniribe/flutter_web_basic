import 'package:flutter/material.dart';
import 'package:flutter_web_basic/config/routing/route_names.dart';
import 'package:flutter_web_basic/views/home/home_view.dart';
import '../../views/about/about_view.dart';
import '../../views/episodes/episodes_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RouteNames.homeRoute:
      return _getPageRoute(const HomeView());

    case RouteNames.aboutRoute:
      return _getPageRoute(const AboutView());

    case RouteNames.episodesRoute:
      return _getPageRoute(const EpisodesView());

    default:
      return _getPageRoute(const HomeView());
  }
}

PageRoute _getPageRoute(Widget child) {
  return FadeRoute(child: child);
}

class FadeRoute extends PageRouteBuilder {
  final Widget child;

  FadeRoute({required this.child})
      : super(
            pageBuilder: (BuildContext context, Animation<double> animation,
                    Animation<double> secondaryAnimation) =>
                child,
            transitionsBuilder: (BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                    Widget child) =>
                FadeTransition(
                  opacity: animation,
                  child: child,
                ));
}
