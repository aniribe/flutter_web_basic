import 'package:flutter/cupertino.dart';
import '../../util/string_consts.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 150,
      child: Image.asset(StringConst.logoImage),
    );
  }
}
