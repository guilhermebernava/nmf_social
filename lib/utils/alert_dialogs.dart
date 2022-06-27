import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nmf_social/themes/app_colors.dart';

class AlertDialogs {
  static Future error(BuildContext context) async {
    return showDialog(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
          ),
          title: Text(
            'Error',
            style: GoogleFonts.outfit(color: Colors.red, fontSize: 25),
          ),
          backgroundColor: AppColors.grey,
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text(
                  'Oops!! something went wrong....',
                  style: GoogleFonts.outfit(
                    color: AppColors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            Center(
              child: TextButton(
                child: Text(
                  'Try Again',
                  style: GoogleFonts.outfit(
                    color: AppColors.white,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
