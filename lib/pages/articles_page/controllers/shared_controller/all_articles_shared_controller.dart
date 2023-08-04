import 'package:flutter/material.dart';
import 'package:n_y_t_articles/app/constants/app_constants.dart';
import 'package:n_y_t_articles/pages/articles_page/controllers/articels_app_bar_controller.dart';
import 'package:n_y_t_articles/pages/articles_page/views/all_articles_view/components/all_articles_list.dart';
import 'package:n_y_t_articles/pages/articles_page/views/all_articles_view/components/empty_articles_list.dart';
import 'package:n_y_t_articles/pages/articles_page/views/all_articles_view/components/get_articles_failure_widget.dart';

import '../../models/article_model/article_model.dart';

class AllArticlesSharedController {
  // this function returns the loading widget
  static Widget getWidgetOnGetArticlesLoading() {
    // get the loader widget from the app constants class
    return AppConstants.loader;
  }

  //this function returns the success widget
  static Widget getWidgetOnGetArticlesSuccess(List<ArticleModel>? articles) {
    // if the articles list is empty
    if (articles!.isEmpty) return const EmptyArticlesList();
    // if the articles list is not empty
    return AllArticlesList(articles: articles);
  }

  //this function returns the failure widget
  static Widget getWidgetOnGetArticlesFailed() {
    return const GetArticlesFailureWidget();
  }

  // this function returns list of Icon widgets that will display in the action part
  // of the articles app bar
  static List<Widget>? articlesAppBarActions(BuildContext context) {
    return [
      singleAppBarAction(
        // determining the icon of search button
        ArticlesAppBarController.get(context).showHideSearchBarFlag
            ? Icons.search_off
            : Icons.search,
        () {
          // toggle the flag to show or hide the search bar and to change the
          // icon of search button
          ArticlesAppBarController.get(context, listen: false).toggleFlag();
        },
      ),
      singleAppBarAction(Icons.more_vert, () {}),
    ];
  }

  // this functions returns a custom Icon widget
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

  // this function returns the text style of the article tile subtitle
  static TextStyle? articlesTileSubtitleTextStyle() {
    return const TextStyle(color: Colors.grey, fontSize: 12);
  }
}
