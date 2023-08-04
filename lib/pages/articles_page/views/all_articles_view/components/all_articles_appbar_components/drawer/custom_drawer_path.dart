import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDrawerPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var path = Path();
    path.lineTo(width * 0.75, 0);
    // draw the curve at the top right corner
    path.quadraticBezierTo(width * 0.85, 0, width * 0.88, height * 0.1);
    path.lineTo(width, height / 1.8);
    // draw the split point in the center of the right side
    path.lineTo(width * 0.88, height * 0.9);
    // draw the curve at the bottom right corner
    path.quadraticBezierTo(width * 0.85, height, width * 0.75, height);
    path.lineTo(0, height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
