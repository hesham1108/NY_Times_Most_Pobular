import 'package:flutter/material.dart';
import 'package:n_y_t_articles/pages/articles_page/controllers/shared_controller/all_articles_shared_controller.dart';

class SingleArticleTileTitle extends StatelessWidget {
  final String title;
  const SingleArticleTileTitle({Key? key, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: 2,
      style: AllArticlesSharedController.articlesTitleTextStyle(),
    );
  }
}
