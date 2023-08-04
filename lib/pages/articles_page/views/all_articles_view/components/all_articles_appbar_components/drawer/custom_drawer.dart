import 'package:flutter/material.dart';

import 'custom_drawer_border_painter.dart';
import 'custom_drawer_path.dart';
import 'custom_drawer_tiles.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: const Duration(milliseconds: 400),
      alignment: Alignment.topLeft,
      reverseDuration: const Duration(milliseconds: 400),
      child: Transform.translate(
        offset: const Offset(1, -5),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.sizeOf(context).height * 0.045),
              child: CustomPaint(
                painter: CustomDrawerBorderPainter(),
                child: ClipPath(
                  clipper: CustomDrawerPath(),
                  child: Drawer(
                    clipBehavior: Clip.none,
                    child: ListView(
                      padding: EdgeInsets.zero,
                      children: [
                        CustomDrawerTiles(
                          title: "profile",
                          iconName: 'home',
                          onTap: () {},
                        ),
                        CustomDrawerTiles(
                          title: "rate us",
                          iconName: 'points',
                          onTap: () {},
                        ),
                        CustomDrawerTiles(
                          title: "videos",
                          iconName: 'video',
                          onTap: () {},
                        ),
                        CustomDrawerTiles(
                          title: "articles",
                          iconName: 'book',
                          onTap: () {},
                        ),
                        CustomDrawerTiles(
                          title: "news",
                          iconName: 'vaccination',
                          onTap: () {},
                        ),
                        CustomDrawerTiles(
                          title: "my points",
                          iconName: 'points',
                          onTap: () {},
                        ),
                        CustomDrawerTiles(
                          title: "settings",
                          iconName: 'settings',
                          onTap: () {},
                        ),
                        CustomDrawerTiles(
                          title: "about us",
                          iconName: 'us',
                          onTap: () {},
                        ),
                        CustomDrawerTiles(
                          title: "recommend us",
                          iconName: 'share',
                          onTap: () {},
                        ),
                        CustomDrawerTiles(
                          title: "call us",
                          iconName: 'call',
                          onTap: () {},
                        ),
                        CustomDrawerTiles(
                          title: "ask anything",
                          iconName: 'ask',
                          onTap: () {},
                        ),
                        CustomDrawerTiles(
                          title: "test",
                          iconName: 'ask',
                          onTap: () {},
                        ),
                        CustomDrawerTiles(
                          title: "test",
                          iconName: 'ask',
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: -33,
              top: MediaQuery.sizeOf(context).height / 1.85,
              child: Image.asset('assets/images/drawer_star_icon.png'),
            ),
          ],
        ),
      ),
    );
  }
}
