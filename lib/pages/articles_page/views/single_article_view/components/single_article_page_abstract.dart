import 'package:flutter/material.dart';
import 'package:n_y_t_articles/pages/articles_page/controllers/shared_controller/single_article_shared_controller.dart';

class SingleArticlePageAbstract extends StatelessWidget {
  final String abstract;
  const SingleArticlePageAbstract({Key? key, required this.abstract})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      abstract,
      style: SingleArticleSharedController.abstractTextStyle(),
    );
  }
}
