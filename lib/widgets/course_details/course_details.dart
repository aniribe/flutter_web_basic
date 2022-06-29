import 'package:flutter/cupertino.dart';
import 'package:flutter_web_basic/util/string_consts.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            StringConst.courseDetailsTitle,
            style: const TextStyle(
                fontWeight: FontWeight.w800, height: 0.9, fontSize: 80),
          ),
          const SizedBox(height: 30),
          Text(
            StringConst.courseDetailsDescription,
            style: const TextStyle(fontSize: 21, height: 1.7),
          ),
        ],
      ),
    );
  }
}
