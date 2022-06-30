import 'package:flutter/cupertino.dart';
import 'package:flutter_web_basic/util/string_consts.dart';
import 'package:flutter_web_basic/widgets/call_to_action/call_to_action.dart';
import 'package:flutter_web_basic/widgets/course_details/course_details.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CourseDetails(),
        const SizedBox(height: 100),
        CallToAction(title: StringConst.callToActionTitle),
      ],
    );
  }
}
