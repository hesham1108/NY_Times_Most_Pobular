import 'package:flutter/material.dart';
import 'package:n_y_t_articles/pages/articles_page/controllers/shared_controller/all_articles_shared_controller.dart';

class SingleArticleTileSubtitle extends StatelessWidget {
  final String byline, publishedDate;
  const SingleArticleTileSubtitle(
      {Key? key, required this.byline, required this.publishedDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            byline,
            style: AllArticlesSharedController.articlesSubtitleTextStyle(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Icon(
                Icons.calendar_month,
                color: Colors.grey,
                size: 13,
              ),
              Text(
                publishedDate,
                style: AllArticlesSharedController.articlesSubtitleTextStyle(),
              ),
            ],
          ),
        )
      ],
    );
  }
}
