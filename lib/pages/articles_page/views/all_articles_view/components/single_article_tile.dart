import 'package:flutter/material.dart';
import 'package:n_y_t_articles/pages/articles_page/models/article_model/article_model.dart';
import 'package:n_y_t_articles/pages/articles_page/views/all_articles_view/components/single_article_tile_leading.dart';
import 'package:n_y_t_articles/pages/articles_page/views/all_articles_view/components/single_article_tile_subtitle.dart';
import 'package:n_y_t_articles/pages/articles_page/views/all_articles_view/components/single_article_tile_title.dart';
import 'package:n_y_t_articles/pages/articles_page/views/all_articles_view/components/single_article_tile_trailing.dart';

import '../../single_article_view/single_article_view.dart';

class SingleArticleTile extends StatelessWidget {
  final ArticleModel article;
  const SingleArticleTile({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      horizontalTitleGap: 15,
      // display the image title of article
      leading: SingleArticleTileLeading(media: article.media!),
      // display the Arrow at the end of the tile
      trailing: const SingleArticleTileTrailing(),
      // display the title of the article
      title: SingleArticleTileTitle(title: article.title!),
      // display the by whom and the published date of the article
      subtitle: SingleArticleTileSubtitle(
          byline: article.byline!, publishedDate: article.published_date!),
      // navigate to the single article page taking the whole data of
      // the article with us
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SingleArticleView(
              article: article,
            ),
          ),
        );
      },
    );
  }
}
