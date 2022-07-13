import 'package:flutter/cupertino.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:provider_architecture/_provider_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../datamodels/season_details_model.dart';
import '../../style/text_styles.dart';

class SeasonDetailsDesktop extends ProviderWidget<SeasonDetailsModel> {
  @override
  Widget build(BuildContext context, SeasonDetailsModel model) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Row(
        //TODO check in simulator
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            model.title,
            style: titleTextStyle(sizingInformation.deviceScreenType),
          ),
          const SizedBox(
            width: 50,
          ),
          Expanded(
            child: Text(
              model.description,
              style: descriptionTextStyle(sizingInformation.deviceScreenType),
            ),
          ),
        ],
      ),
    );
  }
}
