import 'package:flutter/cupertino.dart';
import 'package:flutter_web_basic/constants/string_consts.dart';
import 'package:flutter_web_basic/services/api.dart';
import '../config/locator.dart';
import '../datamodels/episode_item_model.dart';

class EpisodeViewModel extends ChangeNotifier {
  final api = locator<Api>();

  List<EpisodeItemModel>? _episodes;
  List<EpisodeItemModel>? get episodes => _episodes;

  Future getEpisodes() async {
    var episodeResults = [
      EpisodeItemModel(
        title: 'Setup, Build and Deploy',
        duration: 14.07,
        imageUrl: StringConst.part1Image,
      ),
      EpisodeItemModel(
          title: 'Adding a Responsive UI',
          duration: 18.54,
          imageUrl: StringConst.part2Image),
      EpisodeItemModel(
          title: 'Layout Templates',
          duration: 14.55,
          imageUrl: StringConst.part3Image),
      EpisodeItemModel(
          title: 'State Management and Api integration',
          duration: 14.55,
          imageUrl: StringConst.part4Image),
    ];

    if (episodeResults is String) {
      //show error
    } else {
      _episodes = episodeResults;
    }

    notifyListeners();
  }

  // final episodes = [
  //   EpisodeItemModel(
  //     title: 'Setup, Build and Deploy',
  //     duration: 14.07,
  //     imageUrl: StringConst.part1Image,
  //   ),
  //   EpisodeItemModel(
  //       title: 'Adding a Responsive UI',
  //       duration: 18.54,
  //       imageUrl: StringConst.part2Image),
  //   EpisodeItemModel(
  //       title: 'Layout Templates',
  //       duration: 14.55,
  //       imageUrl: StringConst.part3Image),
  //   EpisodeItemModel(
  //       title: 'State Management and Api integration',
  //       duration: 14.55,
  //       imageUrl: StringConst.part4Image),
  // ];
}
