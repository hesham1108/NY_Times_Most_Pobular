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
              // title of the article
              SingleArticlePageTitle(title: article.title.toString()),
              const SizedBox(height: 10),
              // abstract of the article
              SingleArticlePageAbstract(abstract: article.abstract.toString()),
              const SizedBox(height: 10),
              // by whom and published date of the article
              SingleArticlePageBylinePublishDate(
                byline: article.byline!,
                publishedDate: article.published_date!,
              ),
              const SizedBox(height: 10),
              // article image
              SingleArticlePageImage(media: article.media!),
              //article source
              SingleArticlePageSource(source: article.source.toString()),
              const SizedBox(height: 10),
              // article dummy description
              const SingleArticlePageDescription(),
            ],
          ),
        ),
      ),
    );
  }
}
