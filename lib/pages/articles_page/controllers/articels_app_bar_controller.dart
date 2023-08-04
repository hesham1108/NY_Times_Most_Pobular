import 'package:flutter/Material.dart';
import 'package:n_y_t_articles/pages/articles_page/views/all_articles_view/components/all_articles_appbar_components/articles_search_input.dart';
import 'package:provider/provider.dart';

class ArticlesAppBarController extends ChangeNotifier {
  static ArticlesAppBarController get(BuildContext context,
          {bool listen = true}) =>
      Provider.of<ArticlesAppBarController>(context, listen: listen);

  final GlobalKey<ScaffoldState> _allArticlesScaffoldKey =
      GlobalKey<ScaffoldState>();

  Widget currentAppBarWidget = const SizedBox();
  bool flag = false;

  toggleFlag() {
    flag = flag ? false : true;
    toggleArticlesSearchBar(flag);
  }

  toggleArticlesSearchBar(bool showSearchBar) {
    currentAppBarWidget = showSearchBar
        ? ArticlesSearchInput(onTap: () {
            toggleFlag();
          })
        : const SizedBox();
    notifyListeners();
  }

  GlobalKey<ScaffoldState> getAllArticlesScaffoldKey() {
    return _allArticlesScaffoldKey;
  }

  displayDrawer() {
    _allArticlesScaffoldKey.currentState!.openDrawer();
  }
}
