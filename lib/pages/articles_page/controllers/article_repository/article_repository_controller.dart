import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../../../../app/constants/app_constants.dart';
import '../../models/article_model/article_model.dart';

class ArticleRepositoryController {
  // a flag to indicate the process of getting data
  static bool getArticlesSuccess = false;

  // the List where to assign the api list
  static List<ArticleModel> articles = [];

  static Future<void> getAllArticles() async {
    String url = AppConstants.baseUrl;

    try {
      // generating the uri
      final Uri uri = Uri.parse(url);

      // getting data from api using HTTP package
      var response = await http.get(uri);

      // checking the response status code
      if (response.statusCode == 200 || response.statusCode == 201) {
        getArticlesSuccess = true;

        // convert the json data to a dynamic list
        var jd = jsonDecode(response.body)['results'] as List;
        // convert the dynamic list to a list of articles
        articles = jd.map((e) => ArticleModel.fromJson(e)).toList();
      } else {
        getArticlesSuccess = false;
      }
    } on SocketException {
      // display a toaster to inform the user to check his/her internet
      // because there is a problem with the connection
      AppConstants.showFailureToaster(
          "you need to check your Internet connection");
    } catch (e) {
      rethrow;
    }
  }
}
