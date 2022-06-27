import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../themes/app_colors.dart';

class DividerText extends Row {
  DividerText(
    BuildContext context, {
    Key? key,
    required String text,
    Color color = AppColors.white,
  }) : super(
          key: key,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 2,
              width: MediaQuery.of(context).size.width * 0.27,
              color: AppColors.primary,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.03),
              child: Text(
                text.toUpperCase(),
                style: GoogleFonts.outfit(
                  color: color,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              height: 2,
              width: MediaQuery.of(context).size.width * 0.27,
              color: AppColors.secondary,
            ),
          ],
        );
}
