import 'package:flutter/material.dart';
import 'package:n_y_t_articles/pages/articles_page/views/all_articles_view/components/single_article_tile.dart';

import '../../../models/article_model/article_model.dart';

class AllArticlesList extends StatelessWidget {
  final List<ArticleModel> articles;
  const AllArticlesList({Key? key, required this.articles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              itemCount: articles.length,
              itemBuilder: (context, index) {
                return SingleArticleTile(article: articles[index]);
              }),
        ),
      ],
    );
  }
}
