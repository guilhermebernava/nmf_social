import 'package:flutter/material.dart';
import 'package:nmf_social/themes/app_colors.dart';

class CardImage extends StatelessWidget {
  final String imageURL;
  const CardImage({Key? key, required this.imageURL}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Padding(
      padding:
          EdgeInsets.only(bottom: mediaQuery.size.height * 0.05, right: 20),
      child: Container(
        width: mediaQuery.size.width * 0.8,
        height: mediaQuery.size.height * 0.37,
        decoration: BoxDecoration(
          color: AppColors.grey,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            imageURL,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
