import 'package:flutter/material.dart';
import 'package:n_y_t_articles/app/constants/app_constants.dart';
import 'package:n_y_t_articles/pages/articles_page/controllers/cubits/article_cubit/article_cubit.dart';

class GetArticlesFailureWidget extends StatelessWidget {
  const GetArticlesFailureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            ArticleCubit.get(context).getArticlesFromApi();
          },
          child: Column(
            children: [
              Icon(
                Icons.reply,
                color: AppConstants.mainColor,
              ),
              const SizedBox(height: 10),
              const Text(
                'There was an Error , Try again ..!',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
