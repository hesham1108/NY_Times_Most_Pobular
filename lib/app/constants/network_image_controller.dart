import 'package:flutter/Material.dart';

import '../../pages/articles_page/models/article_media_metadata_model/article_media_metadata_model.dart';
import 'app_constants.dart';

class NetworkImageController {
  // a function that returns the network image widget
  static Widget networkImageWidget(
      ArticleMediaMetadataModel? mediaMetadata, BuildContext context) {
    return Image.network(
      mediaMetadata!.url.toString(),
      fit: BoxFit.fill,
      // the displayed part when the image loaded successfully
      frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
        return child;
      },
      // the displayed part when the image is loading
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) {
          return child;
        } else {
          return loadingUntilImageDisplayed(context, mediaMetadata);
        }
      },
      // the displayed part after Failure to get the image
      errorBuilder:
          (BuildContext context, Object exception, StackTrace? stackTrace) {
        return getImageFailed(mediaMetadata);
      },
    );
  }

  // the loading part
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

  //the failure part
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
