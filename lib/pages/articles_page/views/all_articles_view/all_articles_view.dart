import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:n_y_t_articles/app/constants/app_constants.dart';
import 'package:n_y_t_articles/app/shared_components/shared_scaffold.dart';
import 'package:n_y_t_articles/pages/articles_page/controllers/cubits/article_cubit/article_cubit.dart';
import 'package:n_y_t_articles/pages/articles_page/controllers/shared_controller/all_articles_shared_controller.dart';
import 'package:n_y_t_articles/pages/articles_page/views/all_articles_view/components/all_articles_list.dart';

import '../../models/article_model/article_model.dart';

class AllArticlesView extends StatefulWidget {
  const AllArticlesView({Key? key}) : super(key: key);

  @override
  State<AllArticlesView> createState() => _AllArticlesViewState();
}

class _AllArticlesViewState extends State<AllArticlesView> {
  bool pageLoading = true;
  List<ArticleModel> articles = [];
  // Widget displayedWidget = AppConstants.loader;

  @override
  void initState() {
    ArticleCubit.get(context).getArticlesFromApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SharedScaffold(
      containDrawer: true,
      appBarTitle: 'NY Times Most Popular',
      actionsOfAppBar: AllArticlesSharedController.articlesAppBarActions(),
      scaffoldBody: BlocConsumer<ArticleCubit, ArticleState>(
        listener: (context, state) {
          if (state is GetArticleLoading) {
            pageLoading = true;
          } else if (state is GetArticleSuccess) {
            pageLoading = false;
            articles = state.articles!;
          } else if (state is GetArticleFailure) {
            pageLoading = false;
          }
        },
        builder: (context, state) {
          return pageLoading
              ? AppConstants.loader
              : AllArticlesList(articles: articles);
        },
      ),
    );
  }
}
