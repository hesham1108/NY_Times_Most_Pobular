import 'package:flutter/Material.dart';

import '../constants/app_constants.dart';

class SharedScaffold extends StatelessWidget {
  final String? appBarTitle;
  final List<Widget>? actionsOfAppBar;
  final void Function()? leadingAction;
  final Widget? scaffoldBody;
  final bool containDrawer;
  const SharedScaffold({
    Key? key,
    this.appBarTitle,
    this.leadingAction,
    this.actionsOfAppBar,
    required this.scaffoldBody,
    required this.containDrawer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        shadowColor: const Color(0xd3e3e3e3),
        elevation: 5,
        backgroundColor: AppConstants.mainColor,
        title: Text(
          appBarTitle ?? '',
          style: TextStyle(
              fontFamily: AppConstants.fontFamily,
              fontSize: w * 0.055,
              fontWeight: FontWeight.w600,
              color: Colors.white),
        ),
        leading: IconButton(
          onPressed: containDrawer
              ? () {
                  Scaffold.of(context).openDrawer();
                }
              : leadingAction ??
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
