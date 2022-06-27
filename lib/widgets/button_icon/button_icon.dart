import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nmf_social/themes/app_colors.dart';

class ButtonIcon extends InkWell {
  ButtonIcon(
    BuildContext context, {
    Key? key,
    required VoidCallback onTap,
    required IconData icon,
  }) : super(
          key: key,
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: AppColors.primary,
                width: 2,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.width * 0.05,
                horizontal: MediaQuery.of(context).size.width * 0.08,
              ),
              child: FaIcon(
                icon,
                color: AppColors.white,
                size: 40,
              ),
            ),
          ),
        );
}
