import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nmf_social/themes/app_colors.dart';

class Button extends InkWell {
  Button(
    BuildContext context, {
    Key? key,
    required VoidCallback onTap,
    required String title,
    required Size size,
  }) : super(
          key: key,
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              gradient: AppColors.gradient,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: size.height * 0.02,
                horizontal: size.width * 0.32,
              ),
              child: Text(
                title.toUpperCase(),
                style: GoogleFonts.outfit(
                  color: AppColors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
        );
}
