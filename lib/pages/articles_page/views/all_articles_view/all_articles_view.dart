import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:n_y_t_articles/app/constants/app_constants.dart';
import 'package:n_y_t_articles/app/shared_components/shared_scaffold.dart';
import 'package:n_y_t_articles/pages/articles_page/controllers/articels_app_bar_controller.dart';
import 'package:n_y_t_articles/pages/articles_page/controllers/cubits/article_cubit/article_cubit.dart';
import 'package:n_y_t_articles/pages/articles_page/controllers/shared_controller/all_articles_shared_controller.dart';

class AllArticlesView extends StatefulWidget {
  const AllArticlesView({Key? key}) : super(key: key);

  @override
  State<AllArticlesView> createState() => _AllArticlesViewState();
}

class _AllArticlesViewState extends State<AllArticlesView> {
  // this is the widget that will display in the body of all article view
  Widget displayedWidget = AppConstants.loader;

  @override
  void initState() {
    // calling the function that will get articles from api
    ArticleCubit.get(context).getArticlesFromApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SharedScaffold(
      containDrawer: true,
      scaffoldKey:
          ArticlesAppBarController.get(context).getAllArticlesScaffoldKey(),
      leadingAction: () {
        // the function to display the drawer
        ArticlesAppBarController.get(context, listen: false).displayDrawer();
      },
      appBarTitle: 'NY Times Most Popular',
      actionsOfAppBar:
          AllArticlesSharedController.articlesAppBarActions(context),
      scaffoldBody: BlocConsumer<ArticleCubit, ArticleState>(
        listener: (context, state) {
          if (state is GetArticleLoading) {
            // assign the loading widget to the displayed widget from the All Articles Controller when the loading state
            displayedWidget =
                AllArticlesSharedController.getWidgetOnGetArticlesLoading();
          } else if (state is GetArticleSuccess) {
            // assign the success widget from the All Articles Controller  to the displayed widget when the success state
            displayedWidget =
                AllArticlesSharedController.getWidgetOnGetArticlesSuccess(
                    state.articles);
          } else if (state is GetArticleFailure) {
            // assign the Failure widget from the All Articles Controller  to the displayed widget when the failure state
            displayedWidget =
                AllArticlesSharedController.getWidgetOnGetArticlesFailed();
          }
        },
        builder: (context, state) {
          return displayedWidget;
        },
      ),
    );
  }
}
