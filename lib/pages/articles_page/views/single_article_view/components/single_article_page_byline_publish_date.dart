import 'package:flutter/material.dart';
import 'package:n_y_t_articles/pages/articles_page/controllers/shared_controller/single_article_shared_controller.dart';

class SingleArticlePageBylinePublishDate extends StatelessWidget {
  final String byline, publishedDate;
  const SingleArticlePageBylinePublishDate(
      {Key? key, required this.byline, required this.publishedDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 4,
          child: Text(
            byline,
            style: SingleArticleSharedController
                .sourceBylinePublishedDateTextStyle(),
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(
            publishedDate,
            style: SingleArticleSharedController
                .sourceBylinePublishedDateTextStyle(),
          ),
        ),
      ],
    );
  }
}
