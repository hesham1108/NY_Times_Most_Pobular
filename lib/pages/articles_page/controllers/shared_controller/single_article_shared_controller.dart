import 'package:flutter/material.dart';

class SingleArticleSharedController {
  // chose the suitable text style for every text in the single article page

  static TextStyle? titleTextStyle() {
    return const TextStyle(
      fontWeight: FontWeight.w800,
      fontSize: 20,
    );
  }

  static TextStyle? abstractTextStyle() {
    return const TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w500,
      fontSize: 15,
    );
  }

  static TextStyle? descriptionTextStyle() {
    return const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14,
    );
  }

  static TextStyle? sourceBylinePublishedDateTextStyle() {
    return const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
    );
  }
}
