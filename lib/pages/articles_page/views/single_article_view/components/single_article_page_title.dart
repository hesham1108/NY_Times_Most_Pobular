import 'package:flutter/material.dart';
import 'package:n_y_t_articles/pages/articles_page/controllers/shared_controller/single_article_shared_controller.dart';

class SingleArticlePageTitle extends StatelessWidget {
  final String title;
  const SingleArticlePageTitle({Key? key, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: SingleArticleSharedController.titleTextStyle(),
    );
  }
}
