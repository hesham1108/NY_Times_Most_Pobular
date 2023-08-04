import 'package:flutter/material.dart';

class CustomDrawerTiles extends StatelessWidget {
  final String iconName, title;
  final void Function()? onTap;
  const CustomDrawerTiles(
      {Key? key,
      required this.title,
      required this.iconName,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 2.5),
      child: ListTile(
        contentPadding: const EdgeInsets.all(2),
        tileColor: const Color(0xfff1f1f1),
        leading: Padding(
            padding:
                EdgeInsets.only(right: MediaQuery.sizeOf(context).width * 0.17),
            child: const Icon(Icons.star_border_rounded)),
        title: Text(
          title,
          style: const TextStyle(
            color: Color(0xFF1E1E1E),
            fontSize: 12,
            fontFamily: 'Cairo-Regular',
            fontWeight: FontWeight.w700,
          ),
        ),
        trailing: iconName == 'home'
            ? InkWell(
                child: const Icon(Icons.close),
                onTap: () {
                  Scaffold.of(context).closeEndDrawer();
                },
              )
            : null,
        onTap: onTap,
      ),
    );
  }
}
