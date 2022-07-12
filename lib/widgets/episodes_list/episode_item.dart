import 'package:flutter/material.dart';
import 'package:flutter_web_basic/constants/app_colors.dart';
import '../../datamodels/episode_item_model.dart';
import '../../extensions/hover_extensions.dart';

class EpisodeItem extends StatelessWidget {
  final EpisodeItemModel model;

  const EpisodeItem({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white,
      elevation: 2,
      child: SizedBox(
        width: 360,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Image.asset(
                model.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                    softWrap: true,
                  ),
                  Text(
                    '${model.duration} minutes',
                    style: const TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ).showCursorOnHover.moveUpOnHover;
  }
}
