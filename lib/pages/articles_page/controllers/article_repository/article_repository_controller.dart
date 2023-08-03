import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../../../../app/constants/app_constants.dart';
import '../../models/article_model/article_model.dart';

class ArticleRepositoryController {
  static bool getArticlesSuccess = false;
  static List<ArticleModel> articles = [];

  static Future<void> getAllArticles() async {
    String url = AppConstants.baseUrl;

    try {
      final Uri uri = Uri.parse(url);
      var response = await http.get(uri);
      if (response.statusCode == 200 || response.statusCode == 201) {
        getArticlesSuccess = true;

        var jd = jsonDecode(response.body)['results'] as List;
        articles = jd.map((e) => ArticleModel.fromJson(e)).toList();
      } else {
        getArticlesSuccess = false;
      }
    } on SocketException {
      AppConstants.showFailureToaster(
          "you need to check your Internet connection");
    } catch (e) {
      rethrow;
    }
  }
}
