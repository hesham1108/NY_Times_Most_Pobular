import 'package:flutter/material.dart';
import 'package:n_y_t_articles/app/constants/app_constants.dart';

import 'custom_drawer_path.dart';

class CustomDrawerBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // draw a border with the main app color around the custom drawer
    Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8
      ..color = AppConstants.mainColor;

    canvas.drawPath(CustomDrawerPath().getClip(size), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
