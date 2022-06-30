import 'package:flutter/cupertino.dart';

class NavBarItem extends StatelessWidget {
  final String title;

  const NavBarItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 18),
    );
  }
}