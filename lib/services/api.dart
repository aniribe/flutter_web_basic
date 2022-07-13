import 'dart:convert';

import 'package:flutter_web_basic/datamodels/episode_item_model.dart';
import 'package:http/http.dart' as http;

class Api {
  static const String _apiEndpoint =
      'https://us-central1-thebasics-2f123.cloudfunctions.net/thebasics';

  Future<dynamic> getEpisodes() async {
    var response = await http.get(Uri.parse('$_apiEndpoint/courseEpisodes'));

    if (response.statusCode == 200) {
      var episodes = (json.decode(response.body) as List)
          .map((episode) => EpisodeItemModel.fromJson(episode));

      return episodes;
    }

    return 'Could not fetch episodes at this time';
  }
}
