import 'package:flutter/cupertino.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:provider_architecture/_provider_widget.dart';
import '../../datamodels/navbar_item_model.dart';

class NavBarItemMobile extends ProviderWidget<NavBarItemModel> {
  @override
  Widget build(BuildContext context, NavBarItemModel model) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: [
          Icon(model.iconData),
          const SizedBox(
            width: 30,
          ),
          Text(
            model.title,
            style: const TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}
