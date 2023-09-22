import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class HeroBanner extends StatelessWidget {
  const HeroBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      height: 210,
      width: double.infinity,
      indicatorColor: const Color(0xffA3E3F5),
      indicatorRadius: 5,
      indicatorPadding: 10,
      indicatorBottomPadding: 40,
      indicatorBackgroundColor: Colors.white,
      onPageChanged: (value) {
        debugPrint('page changed: $value');
      },
      autoPlayInterval: 3000,
      isLoop: true,
      children: [
        Image.asset(
          'asset/home/banner.png',
          fit: BoxFit.cover,
        ),
        Image.asset(
          'asset/home/banner2.png',
          fit: BoxFit.cover,
        ),
        Image.asset(
          'asset/home/banner3.png',
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
