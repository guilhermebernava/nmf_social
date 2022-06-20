import 'package:flutter/material.dart';
import 'package:nmf_social/themes/app_colors.dart';
import 'package:nmf_social/widgets/carousel_image.dart/carousel_image.dart';
import 'package:nmf_social/widgets/toggle_button/toggle_button.dart';
import 'package:nmf_social/widgets/welcome_to/welcome_to.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselImage(),
              WelcomeTo(
                fontSizeWelcome: 36,
                fontSizeTo: 54,
                to: "Bernava",
              ),
              const ToggleButton(
                AppColors.primary,
                firstButtonText: "Sign In",
                firstButtonRedirect: "/signIn",
                secondButtonText: "Login",
                secondButtonRedirect: "/login",
              ),
            ]),
      ),
    );
  }
}
