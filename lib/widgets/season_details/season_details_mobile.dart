import 'package:flutter/cupertino.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:provider_architecture/_provider_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../datamodels/season_details_model.dart';
import '../../style/text_styles.dart';

class SeasonDetailsMobile extends ProviderWidget<SeasonDetailsModel> {
  @override
  Widget build(BuildContext context, SeasonDetailsModel model) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Column(
        children: [
          Text(
            model.title,
            style:
                titleTextStyle(sizingInformation.deviceScreenType) as TextStyle,
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            model.description,
            style: descriptionTextStyle(sizingInformation.deviceScreenType)
                as TextStyle,
          ),
        ],
      ),
    );
  }
}
