import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_basic/constants/app_colors.dart';

class NavigationDrawerHeader extends StatelessWidget {
  const NavigationDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: AppColors.green,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'SKILL UP NOW',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: AppColors.white,
            ),
          ),
          Text(
            'TAP HERE',
            style: TextStyle(color: AppColors.white),
          )
        ],
      ),
    );
  }
}
