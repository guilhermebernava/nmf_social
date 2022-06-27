import 'package:flutter/material.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';

class ButtonToggle extends InkWell {
  ButtonToggle(
    BuildContext context, {
    Key? key,
    required String text,
    required Color color,
    required bool selected,
    required VoidCallback onTap,
    required Size size,
  }) : super(
          onTap: onTap,
          key: key,
          child: Container(
            width: size.width * 0.39,
            height: size.height * 0.06,
            decoration: BoxDecoration(
                color: selected ? color : Colors.transparent,
                border: Border.all(color: Colors.transparent),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: AppTextStyles.toggleButton(
                  selected ? AppColors.black : AppColors.white,
                ),
              ),
            ),
          ),
        );
}
