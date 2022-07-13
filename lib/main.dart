import 'package:flutter/material.dart';
import 'package:flutter_web_basic/services/navigation_service.dart';
import 'package:flutter_web_basic/views/layout_template/layout_template.dart';
import 'config/locator.dart';
import 'config/routing/route_names.dart';
import 'config/routing/router.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web Basic',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme:
              Theme.of(context).textTheme.apply(fontFamily: 'Open Sans')),
      builder: (context, child) => LayoutTemplate(child: child as Widget),
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: RouteNames.homeRoute,

      // home: const LayoutTemplate(),
    );
  }
}
