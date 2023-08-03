import 'package:flutter/material.dart';

import '../../../../../app/constants/network_image_controller.dart';
import '../../../models/article_media_model/article_media_model.dart';

class SingleArticlePageImage extends StatelessWidget {
  final List<ArticleMediaModel>? media;
  const SingleArticlePageImage({Key? key, required this.media})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.9,
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: media!.isEmpty
            ? null
            : NetworkImageController.networkImageWidget(
                media![0].media_metadata![1].url!,
                context,
              ),
      ),
    );
  }
}
