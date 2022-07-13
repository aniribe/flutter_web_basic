import 'package:flutter/cupertino.dart';
import 'package:flutter_web_basic/widgets/season_details/season_details_desktop.dart';
import 'package:flutter_web_basic/widgets/season_details/season_details_mobile.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../datamodels/season_details_model.dart';

class SeasonDetails extends StatelessWidget {
  final SeasonDetailsModel details;

  const SeasonDetails({Key? key, required this.details}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: details,
      child: ScreenTypeLayout(
        desktop: SeasonDetailsDesktop(),
        mobile: SeasonDetailsMobile(),
      ),
    );
  }
}
