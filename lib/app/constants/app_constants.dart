import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppConstants {
  static Color mainColor = const Color(0xff45E3C2);
  static Color articleBackgroundColor = const Color(0xFFFAFAFA);
  static String baseUrl =
      "http://api.nytimes.com/svc/mostpopular/v2/viewed/7.json?api-key=j97boNIxfvDYh7f5o0VzvUpKRSACjmcE";
  static const fontFamily = 'Cairo';
  static showSuccessToaster(String msg) {
    Fluttertoast.showToast(
      msg: msg,
      backgroundColor: const Color(0xFF4CBD4C),
      textColor: Colors.white,
      gravity: ToastGravity.TOP,
    );
  }

  static showFailureToaster(String msg) {
    Fluttertoast.showToast(
      msg: msg,
      backgroundColor: const Color(0xFFFF0000),
      textColor: const Color(0xFFFFFFFF),
      gravity: ToastGravity.TOP,
    );
  }

  static Widget loader = Center(
    child: CircularProgressIndicator(
      color: mainColor,
    ),
  );
}
