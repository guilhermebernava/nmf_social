import 'package:flutter/material.dart';

class SplashController {
  static void redirect(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(context, "/welcome", (route) => false);
    });
  }
}
