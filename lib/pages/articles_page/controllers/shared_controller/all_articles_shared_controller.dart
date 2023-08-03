import 'package:flutter/material.dart';

class AllArticlesSharedController {
  static Widget getWidgetOfGettingArticlesSuccess() {
    return const SizedBox();
  }

  static List<Widget>? articlesAppBarActions() {
    return [
      singleAppBarAction(Icons.search, () {}),
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
