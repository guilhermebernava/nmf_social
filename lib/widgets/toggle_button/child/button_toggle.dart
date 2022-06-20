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
  }) : super(
          onTap: onTap,
          key: key,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.39,
            height: MediaQuery.of(context).size.height * 0.06,
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
