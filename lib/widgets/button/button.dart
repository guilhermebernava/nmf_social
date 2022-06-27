import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nmf_social/themes/app_colors.dart';

class Button extends InkWell {
  Button(
    BuildContext context, {
    Key? key,
    required VoidCallback onTap,
    required String title,
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
                vertical: MediaQuery.of(context).size.height * 0.02,
                horizontal: MediaQuery.of(context).size.width * 0.32,
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
