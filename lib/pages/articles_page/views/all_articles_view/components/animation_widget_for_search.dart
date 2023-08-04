import 'package:flutter/material.dart';

import '../../../controllers/articels_app_bar_controller.dart';

class AnimationWidgetForSearch extends StatelessWidget {
  const AnimationWidgetForSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: const Duration(milliseconds: 500),
      reverseDuration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
      alignment: Alignment.centerLeft,
      child: ArticlesAppBarController.get(context).currentSearchBarWidget,
    );
  }
}
