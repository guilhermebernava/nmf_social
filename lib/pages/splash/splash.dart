import 'package:flutter/material.dart';
import 'package:nmf_social/pages/splash/splash_controller.dart';
import 'package:nmf_social/themes/app_colors.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SplashController.redirect(context);
    return const Scaffold(
      backgroundColor: AppColors.primary,
    );
  }
}
