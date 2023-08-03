import 'package:flutter/material.dart';
import 'package:n_y_t_articles/pages/articles_page/controllers/shared_controller/single_article_shared_controller.dart';

class SingleArticlePageSource extends StatelessWidget {
  final String source;
  const SingleArticlePageSource({Key? key, required this.source})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        'Source: $source',
        style:
            SingleArticleSharedController.sourceBylinePublishedDateTextStyle(),
      ),
    );
  }
}
