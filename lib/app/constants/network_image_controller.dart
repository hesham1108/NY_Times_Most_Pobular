import 'package:flutter/Material.dart';

import 'app_constants.dart';

class NetworkImageController {
  static Widget networkImageWidget(String imgUrl, BuildContext context) {
    return Image.network(
      imgUrl,
      fit: BoxFit.fill,
      frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
        return child;
      },
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) {
          return child;
        } else {
          return loadingUntilImageDisplayed();
        }
      },
      errorBuilder:
          (BuildContext context, Object exception, StackTrace? stackTrace) {
        return getImageFailed();
      },
    );
  }

  static Widget loadingUntilImageDisplayed() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: AppConstants.loader,
      ),
    );
  }

  static Widget getImageFailed() {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Icon(
              Icons.emoji_emotions_outlined,
              color: Colors.red,
            ),
            Text('there is no photo..!'),
          ],
        ),
      ),
    );
  }
}
