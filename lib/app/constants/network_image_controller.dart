import 'package:flutter/Material.dart';

import '../../pages/articles_page/models/article_media_metadata_model/article_media_metadata_model.dart';
import 'app_constants.dart';

class NetworkImageController {
  static Widget networkImageWidget(
      ArticleMediaMetadataModel? mediaMetadata, BuildContext context) {
    return Image.network(
      mediaMetadata!.url.toString(),
      fit: BoxFit.fill,
      frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
        return child;
      },
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) {
          return child;
        } else {
          return loadingUntilImageDisplayed(context, mediaMetadata);
        }
      },
      errorBuilder:
          (BuildContext context, Object exception, StackTrace? stackTrace) {
        return getImageFailed(mediaMetadata);
      },
    );
  }

  static Widget loadingUntilImageDisplayed(
      BuildContext context, ArticleMediaMetadataModel? mediaMetadata) {
    return Container(
      width: mediaMetadata!.width,
      height: mediaMetadata.height,
      decoration: BoxDecoration(
          border: Border.all(color: AppConstants.mainColor, width: 1)),
      padding: const EdgeInsets.all(10),
      child: Center(
        child: AppConstants.loader,
      ),
    );
  }

  static Widget getImageFailed(ArticleMediaMetadataModel? mediaMetadata) {
    return Container(
      width: mediaMetadata!.width,
      height: mediaMetadata.height,
      color: Colors.grey,
      padding: const EdgeInsets.all(10.0),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.emoji_emotions_outlined,
            color: Colors.red,
          ),
          Text('there is no photo..!'),
        ],
      ),
    );
  }
}
