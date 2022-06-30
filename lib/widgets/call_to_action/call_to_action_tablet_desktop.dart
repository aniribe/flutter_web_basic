import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';

class CallToActionTabletDesktop extends StatelessWidget {
  final String title;

  const CallToActionTabletDesktop({Key? key, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      decoration: BoxDecoration(
        color: AppColors.green,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: AppColors.white,
        ),
      ),
    );
  }
}
