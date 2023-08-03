import 'package:flutter/material.dart';
import 'package:n_y_t_articles/app/shared_components/shared_scaffold.dart';
import 'package:n_y_t_articles/pages/articles_page/models/article_model/article_model.dart';
import 'package:n_y_t_articles/pages/articles_page/views/single_article_view/components/single_article_page_abstract.dart';
import 'package:n_y_t_articles/pages/articles_page/views/single_article_view/components/single_article_page_description.dart';
import 'package:n_y_t_articles/pages/articles_page/views/single_article_view/components/single_article_page_image.dart';
import 'package:n_y_t_articles/pages/articles_page/views/single_article_view/components/single_article_page_title.dart';

import 'components/single_article_page_byline_publish_date.dart';
import 'components/single_article_page_source.dart';

class SingleArticleView extends StatelessWidget {
  final ArticleModel article;
  const SingleArticleView({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SharedScaffold(
      containDrawer: false,
      appBarTitle: 'NY Times Most Popular',
      scaffoldBody: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleArticlePageTitle(title: article.title.toString()),
              const SizedBox(height: 10),
              SingleArticlePageAbstract(abstract: article.abstract.toString()),
              const SizedBox(height: 10),
              SingleArticlePageBylinePublishDate(
                byline: article.byline!,
                publishedDate: article.published_date!,
              ),
              const SizedBox(height: 10),
              SingleArticlePageImage(media: article.media!),
              SingleArticlePageSource(source: article.source.toString()),
              const SizedBox(height: 10),
              const SingleArticlePageDescription(),
            ],
          ),
        ),
      ),
    );
  }
}
