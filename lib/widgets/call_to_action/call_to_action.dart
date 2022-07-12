import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_basic/widgets/call_to_action/call_to_action_mobile.dart';
import 'package:flutter_web_basic/widgets/call_to_action/call_to_action_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../extensions/hover_extensions.dart';

class CallToAction extends StatelessWidget {
  final String title;

  const CallToAction({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CallToActionMobile(title: title),
      tablet: CallToActionTabletDesktop(title: title),
    ).showCursorOnHover.moveUpOnHover;
  }
}
