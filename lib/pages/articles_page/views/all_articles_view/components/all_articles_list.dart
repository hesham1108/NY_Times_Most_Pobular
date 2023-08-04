import 'package:flutter/material.dart';
import 'package:n_y_t_articles/pages/articles_page/controllers/articels_app_bar_controller.dart';
import 'package:n_y_t_articles/pages/articles_page/controllers/cubits/article_cubit/article_cubit.dart';
import 'package:n_y_t_articles/pages/articles_page/views/all_articles_view/components/animation_widget_for_search.dart';
import 'package:n_y_t_articles/pages/articles_page/views/all_articles_view/components/single_article_tile.dart';

import '../../../models/article_model/article_model.dart';

final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
    GlobalKey<RefreshIndicatorState>();

class AllArticlesList extends StatelessWidget {
  final List<ArticleModel> articles;
  const AllArticlesList({Key? key, required this.articles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // the animated search bar
        const AnimationWidgetForSearch(),

        // the list of the articles
        Expanded(
          child: RefreshIndicator(
            key: _refreshIndicatorKey,
            onRefresh: () async {
              // reloading the articles on pulling the screen down
              ArticleCubit.get(context).getArticlesFromApi();

              // toggle the appearance of the search bar when reloading articles
              ArticlesAppBarController.get(context, listen: false)
                  .toggleArticlesSearchBar(false);
            },
            child: ListView.builder(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  return SingleArticleTile(article: articles[index]);
                }),
          ),
        ),
      ],
    );
  }
}
