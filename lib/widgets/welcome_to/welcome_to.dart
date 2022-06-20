import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../themes/app_colors.dart';

class WelcomeTo extends Column {
  WelcomeTo({
    Key? key,
    required double fontSizeWelcome,
    required double fontSizeTo,
    required String to,
  }) : super(
          key: key,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BorderedText(
              strokeWidth: 2.0,
              strokeColor: AppColors.white,
              child: Text(
                "Welcome To",
                textAlign: TextAlign.center,
                style: GoogleFonts.outfit(
                  fontSize: fontSizeWelcome,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Text(
              to,
              textAlign: TextAlign.center,
              style: GoogleFonts.outfit(
                fontSize: fontSizeTo,
                fontWeight: FontWeight.w700,
                color: AppColors.white,
              ),
            ),
          ],
        );
}
