import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_basic/datamodels/episode_item_model.dart';
import 'package:flutter_web_basic/viewmodels/episode_view_model.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:provider_architecture/_viewmodel_provider.dart';
import '../../datamodels/season_details_model.dart';
import '../../widgets/episodes_list/episodes_list.dart';
import '../../widgets/season_details/season_details.dart';

class EpisodesView extends StatelessWidget {
  const EpisodesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<EpisodeViewModel>.withConsumer(
      viewModelBuilder: () => EpisodeViewModel(),
      onModelReady: (model) => model.getEpisodes(),
      builder: (context, model, child) => SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              height: 100,
            ),
            SeasonDetails(
              details: SeasonDetailsModel(
                title: 'SEASON 1',
                description:
                    'This season covers the absolute basics of Flutter Web Dev to get us up and running with a basic web app.',
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            model.episodes == null
                ? const CircularProgressIndicator()
                : EpisodesList(
                    episodes: model.episodes as List<EpisodeItemModel>,
                  ),
          ],
        ),
      ),
    );
  }
}
