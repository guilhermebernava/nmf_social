import 'dart:async';
import 'package:flutter/material.dart';
import '../card_image/card_image.dart';

class CarouselImage extends StatefulWidget {
  CarouselImage({Key? key}) : super(key: key);
  final controller = ScrollController();

  @override
  State<CarouselImage> createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
  static const double offset = 355;
  late Timer timer;

  void _startTimer() {
    int index = 0;
    timer = Timer.periodic(const Duration(seconds: 2), (Timer t) {
      widget.controller.animateTo(offset * index,
          duration: const Duration(seconds: 1), curve: Curves.decelerate);
      if (index > 3) {
        index = 0;
        return;
      }
      index++;
    });
  }

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          timer.cancel();
        });
      },
      child: SingleChildScrollView(
        controller: widget.controller,
        scrollDirection: Axis.horizontal,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              CardImage(
                imageURL:
                    "https://media-exp1.licdn.com/dms/image/C4D03AQHKCOyQXJEVMg/profile-displayphoto-shrink_800_800/0/1625151512318?e=1661385600&v=beta&t=RR4Mx3u4No60QLrIw5NgbGNU_TVLoZq9aiD3KgySRJA",
              ),
              CardImage(
                imageURL:
                    "https://media-exp1.licdn.com/dms/image/C4D03AQEd_Xh5Sp5jRg/profile-displayphoto-shrink_800_800/0/1651061757147?e=1661385600&v=beta&t=i-s9oSSX5689FINpOHF5Ubj-BpoJ6goBPkVXb4UTHk8",
              ),
              CardImage(
                imageURL:
                    "https://media-exp1.licdn.com/dms/image/C4E03AQHMgcqmjhX_Iw/profile-displayphoto-shrink_400_400/0/1623504397807?e=1661385600&v=beta&t=2abDoD7mwZ4jJGElzXgrhFeBm_0gM9qBHPmJHUf0rMY",
              ),
              CardImage(
                imageURL:
                    "https://media-exp1.licdn.com/dms/image/C4D03AQGic0LNxPUQQg/profile-displayphoto-shrink_400_400/0/1628691932872?e=1661385600&v=beta&t=03L3-FyblAU9Py4GdsCLERrq7Mv2VHiaCAqThlniDhQ",
              ),
              CardImage(
                imageURL:
                    "https://media-exp1.licdn.com/dms/image/C4D03AQHQf1ZCDnIeWA/profile-displayphoto-shrink_400_400/0/1580992895070?e=1661385600&v=beta&t=xTNESmRPU6LaH9tySfKVdN-tGF8PtUiOTrVhdll5B1U",
              ),
            ]),
      ),
    );
  }
}
