import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nmf_social/themes/app_colors.dart';
import 'package:nmf_social/widgets/carousel_image.dart/carousel_image.dart';
import 'package:nmf_social/widgets/toggle_button/toggle_button.dart';

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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CarouselImage(),
                  BorderedText(
                    strokeWidth: 2.0,
                    strokeColor: AppColors.white,
                    child: Text(
                      "Welcome To",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.outfit(
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Text(
                    "Rede Social",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.outfit(
                      fontSize: 54,
                      fontWeight: FontWeight.w700,
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
              const ToggleButton(
                AppColors.primary,
                firstButtonText: "Sign In",
                firstButtonRedirect: "/signIn",
                secondButtonRedirect: "/login",
                secondButtonText: "Login",
              ),
            ]),
      ),
    );
  }
}
