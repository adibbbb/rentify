import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
        children: [
          _herobanner(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Explore Cars', style: TextStyle(
                  fontFamily: 'asset/fonts/Poppins-SemiBold.ttf',
                  fontWeight: FontWeight.w600,
                  fontSize: 23,
                  color: Color(0xff16A6CC),
                ),),
                TextButton(onPressed: (){},
                 child: 
                 Text('See All', style: TextStyle(
                  fontFamily: 'asset/fonts/Poppins-Medium.ttf',
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                  color: Color(0xff16A6CC),
                 ),)
                )
            ],
            ),
          )
        ],
      )
    ),
  );
  }
}

class _herobanner extends StatelessWidget {
  const _herobanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      height: 220,
      width: double.infinity,
      indicatorColor: Color(0xffA3E3F5),
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