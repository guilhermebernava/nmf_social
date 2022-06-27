import 'package:flutter/material.dart';
import 'package:nmf_social/themes/app_colors.dart';
import 'child/button_toggle.dart';

class ToggleButton extends StatefulWidget {
  final String firstButtonText;
  final String secondButtonText;
  final String firstButtonRedirect;
  final String secondButtonRedirect;

  const ToggleButton(
    Color color, {
    Key? key,
    required this.firstButtonText,
    required this.secondButtonText,
    required this.secondButtonRedirect,
    required this.firstButtonRedirect,
  }) : super(key: key);

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  bool btn1 = true;
  bool btn2 = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: AppColors.black,
        border: Border.all(width: 1, color: AppColors.primary),
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(9),
        child: Row(
          children: [
            ButtonToggle(
              context,
              text: widget.firstButtonText,
              color: AppColors.primary,
              selected: btn1,
              size: size,
              onTap: () {
                if (btn1) {
                  Navigator.pushNamed(context, widget.firstButtonRedirect);
                  return;
                }
                if (btn2 == true) {
                  setState(() {
                    btn1 = true;
                    btn2 = false;
                  });
                }
              },
            ),
            SizedBox(
              width: size.width * 0.04,
            ),
            ButtonToggle(
              context,
              text: widget.secondButtonText,
              color: AppColors.secondary,
              selected: btn2,
              size: size,
              onTap: () {
                if (btn2) {
                  Navigator.pushNamed(context, widget.secondButtonRedirect);
                  return;
                }
                if (btn1 == true) {
                  setState(() {
                    btn1 = false;
                    btn2 = true;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
