import 'package:flutter/material.dart';
import 'package:n_y_t_articles/app/constants/app_constants.dart';
import 'package:n_y_t_articles/pages/articles_page/controllers/articels_app_bar_controller.dart';
import 'package:n_y_t_articles/pages/articles_page/views/all_articles_view/components/all_articles_list.dart';
import 'package:n_y_t_articles/pages/articles_page/views/all_articles_view/components/empty_articles_list.dart';
import 'package:n_y_t_articles/pages/articles_page/views/all_articles_view/components/get_articles_failure_widget.dart';

import '../../models/article_model/article_model.dart';

class AllArticlesSharedController {
  static Widget getWidgetOnGetArticlesLoading() {
    return AppConstants.loader;
  }

  static Widget getWidgetOnGetArticlesSuccess(List<ArticleModel>? articles) {
    if (articles!.isEmpty) return const EmptyArticlesList();
    return AllArticlesList(articles: articles);
  }

  static Widget getWidgetOnGetArticlesFailed() {
    return const GetArticlesFailureWidget();
  }

  static List<Widget>? articlesAppBarActions(BuildContext context) {
    return [
      singleAppBarAction(
          ArticlesAppBarController.get(context).flag
              ? Icons.search_off
              : Icons.search, () {
        ArticlesAppBarController.get(context, listen: false).toggleFlag();
      }),
      singleAppBarAction(Icons.more_vert, () {}),
    ];
  }

  static Widget singleAppBarAction(IconData? icon, void Function()? onPressed) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon),
      color: Colors.white,
    );
  }

  static TextStyle? articlesTitleTextStyle() {
    return const TextStyle(
      fontWeight: FontWeight.w500,
      color: Colors.black,
      overflow: TextOverflow.ellipsis,
    );
  }

  static TextStyle? articlesSubtitleTextStyle() {
    return const TextStyle(color: Colors.grey, fontSize: 12);
  }
}
