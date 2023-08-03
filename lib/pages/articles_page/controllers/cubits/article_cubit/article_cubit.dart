import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:n_y_t_articles/pages/articles_page/controllers/article_repository/article_repository_controller.dart';

import '../../../models/article_model/article_model.dart';

part 'article_state.dart';

class ArticleCubit extends Cubit<ArticleState> {
  ArticleCubit() : super(ArticleInitial());

  static ArticleCubit get(BuildContext context) =>
      BlocProvider.of<ArticleCubit>(context);

  Future<void> getArticlesFromApi() async {
    emit(GetArticleLoading());
    await ArticleRepositoryController.getAllArticles();
    if (ArticleRepositoryController.getArticlesSuccess) {
      emit(GetArticleSuccess(articles: ArticleRepositoryController.articles));
    } else {
      emit(GetArticleFailure());
    }
  }

  bool checkIfNoMedia(ArticleModel article) {
    if (article.media!.isEmpty) return true;
    return false;
  }
}
