import 'package:flutter/material.dart';
import 'package:n_y_t_articles/app/constants/app_constants.dart';
import 'package:n_y_t_articles/app/constants/network_image_controller.dart';

import '../../../models/article_media_model/article_media_model.dart';

class SingleArticleTileLeading extends StatelessWidget {
  final List<ArticleMediaModel>? media;
  const SingleArticleTileLeading({Key? key, required this.media})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.16,
      height: MediaQuery.sizeOf(context).width * 0.16,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: AppConstants.mainColor,
        borderRadius: BorderRadius.all(
          Radius.circular(MediaQuery.sizeOf(context).width * 0.08),
        ),
      ),
      child: media!.isEmpty
          ? null
          : NetworkImageController.networkImageWidget(
              media![0].media_metadata![0].url!, context),
    );
  }
}
