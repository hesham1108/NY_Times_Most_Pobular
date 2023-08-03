part of 'article_cubit.dart';

abstract class ArticleState extends Equatable {
  const ArticleState();
}

class ArticleInitial extends ArticleState {
  @override
  List<Object> get props => [];
}

class GetArticleLoading extends ArticleState {
  @override
  List<Object> get props => [];
}

class GetArticleSuccess extends ArticleState {
  final List<ArticleModel>? articles;
  const GetArticleSuccess({required this.articles});
  @override
  List<Object> get props => [];
}

class GetArticleFailure extends ArticleState {
  @override
  List<Object> get props => [];
}
