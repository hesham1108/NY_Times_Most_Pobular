import 'package:flutter/material.dart';
import 'package:n_y_t_articles/app/constants/app_constants.dart';

import 'custom_drawer_path.dart';

class CustomDrawerBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // double height = size.height;
    // double width = size.width;
    Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8
      ..color = AppConstants.mainColor;
    // Path path = Path();
    // path.lineTo(width * 0.8, 0);
    // path.lineTo(width, height / 1.8);
    // path.lineTo(width * 0.8, height);
    // path.lineTo(0, height);
    // path.moveTo(width * 0.8, height);
    // path.close();
    canvas.drawPath(CustomDrawerPath().getClip(size), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
