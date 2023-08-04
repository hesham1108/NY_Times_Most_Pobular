import 'package:flutter/Material.dart';
import 'package:n_y_t_articles/pages/articles_page/views/all_articles_view/components/all_articles_appbar_components/articles_search_input.dart';
import 'package:provider/provider.dart';

class ArticlesAppBarController extends ChangeNotifier {
  static ArticlesAppBarController get(BuildContext context,
          {bool listen = true}) =>
      Provider.of<ArticlesAppBarController>(context, listen: listen);

  final GlobalKey<ScaffoldState> _allArticlesScaffoldKey =
      GlobalKey<ScaffoldState>();

  // the current widget that displayed in the animated search bar widget
  Widget currentSearchBarWidget = const SizedBox();

  // the flag of showing or hiding the search bar
  bool showHideSearchBarFlag = false;

  // toggle the flag and determining the current widget
  toggleFlag() {
    showHideSearchBarFlag = showHideSearchBarFlag ? false : true;

    // determining the current widget
    toggleArticlesSearchBar(showHideSearchBarFlag);
  }

  toggleArticlesSearchBar(bool showSearchBar) {
    currentSearchBarWidget = showSearchBar
        ? ArticlesSearchInput(onTap: () {
            toggleFlag();
          })
        : const SizedBox();
    notifyListeners();
  }

  // the global key of the scaffold of the all articles widget
  GlobalKey<ScaffoldState> getAllArticlesScaffoldKey() {
    return _allArticlesScaffoldKey;
  }

  // displaying the drawer in all articles widget
  displayDrawer() {
    _allArticlesScaffoldKey.currentState!.openDrawer();
  }
}
