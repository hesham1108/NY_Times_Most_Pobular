import 'package:flutter/Material.dart';
import 'package:n_y_t_articles/pages/articles_page/views/all_articles_view/components/all_articles_appbar_components/drawer/custom_drawer.dart';

import '../constants/app_constants.dart';

class SharedScaffold extends StatelessWidget {
  final String? appBarTitle;
  final List<Widget>? actionsOfAppBar;
  final void Function()? leadingAction;
  final Widget? scaffoldBody;
  final bool containDrawer;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  const SharedScaffold({
    Key? key,
    this.appBarTitle,
    this.leadingAction,
    this.actionsOfAppBar,
    this.scaffoldKey,
    required this.scaffoldBody,
    required this.containDrawer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: true,
      drawer: const CustomDrawer(),
      appBar: AppBar(
        shadowColor: const Color(0xd3e3e3e3),
        elevation: 5,
        backgroundColor: AppConstants.mainColor,
        title: Text(
          appBarTitle ?? '',
          style: TextStyle(
              fontFamily: AppConstants.fontFamily,
              fontSize: w * 0.045,
              fontWeight: FontWeight.w600,
              color: Colors.white),
        ),
        leading: IconButton(
          onPressed: leadingAction ??
              () {
                Navigator.pop(context);
              },
          icon: Icon(
            containDrawer ? Icons.menu : Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        actions: actionsOfAppBar,
      ),
      body: scaffoldBody,
    );
  }
}
