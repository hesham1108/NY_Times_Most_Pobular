import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:n_y_t_articles/pages/articles_page/controllers/articels_app_bar_controller.dart';
import 'package:n_y_t_articles/pages/articles_page/controllers/cubits/article_cubit/article_cubit.dart';
import 'package:n_y_t_articles/pages/articles_page/views/all_articles_view/all_articles_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ArticleCubit()),
        ChangeNotifierProvider(create: (context) => ArticlesAppBarController()),
      ],
      child: MaterialApp(
        title: 'NY Times Most Popular',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const AllArticlesView(),
      ),
    );
  }
}
