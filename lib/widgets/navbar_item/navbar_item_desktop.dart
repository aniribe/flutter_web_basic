import 'package:flutter/cupertino.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:provider_architecture/_provider_widget.dart';
import '../../datamodels/navbar_item_model.dart';

class NavBarItemTabletDesktop extends ProviderWidget<NavBarItemModel> {
  @override
  Widget build(BuildContext context, NavBarItemModel model) {
    return Text(
      model.title,
      style: const TextStyle(fontSize: 18),
    );
  }
}
