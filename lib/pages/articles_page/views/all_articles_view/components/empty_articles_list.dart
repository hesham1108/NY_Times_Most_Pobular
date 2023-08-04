import 'package:flutter/material.dart';

import '../../../controllers/shared_controller/all_articles_shared_controller.dart';

class EmptyArticlesList extends StatelessWidget {
  const EmptyArticlesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '[ ]',
          style: AllArticlesSharedController.articlesSubtitleTextStyle(),
        ),
        const Text(
          'There is no news ',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
