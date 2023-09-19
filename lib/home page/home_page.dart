import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:rentify/button_nav_bar.dart';

var services = ["Most Rented", "Brand", "Seat", "Transmission"];
var selectedService = 0;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavBar(),
      body: SafeArea(
          child: Column(
        children: [
          _HeroBanner(),
          _ExploreCars(),

          // SEARCH BAR
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20), 
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffC8EDF9),
                contentPadding: EdgeInsets.symmetric(vertical: 10,),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(width: 1, color: Color(0xff16A6CC)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(width: 1, color: Color(0xff16A6CC)),
                ),
                hintText: 'Cari Mobil Apa Hari Ini', 
                hintStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff90A3BF),
                  ),
                prefixIcon: Icon(Icons.search, size: 18, color: Color(0xff16A6CC),)
              ),
            ),
          ),

          SizedBox(height: 15,),





          // Container(
          //   margin: const EdgeInsets.symmetric(horizontal: 20,),
          //   padding: const EdgeInsets.symmetric(vertical: 5),
          //   child: TextFormField(
          //     decoration: InputDecoration(
          //         border: OutlineInputBorder(
          //           borderRadius: BorderRadius.circular(20), 
          //         ),
          //         hintText: 'Rental Mobil Apa Hari Ini',
          //         hintStyle: GoogleFonts.poppins(
          //             fontSize: 10,
          //             fontWeight: FontWeight.w600,
          //             color: Color(0xff90A3BF), ),
          //         prefixIcon: Icon(
          //           Icons.search,
          //           size: 18,
          //           color: Color(0xff16A6CC),
          //         )),
          //   ),
          // ),

          //SERVICES
          SizedBox(
            height: 24,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectedService = index;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: selectedService == index
                        ? Color(0xff7ED8F1)
                        : Color(0xffA3E3F5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      services[index],
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: selectedService == index
                            ? Colors.white
                            : Color(0xff90A3BF),
                      ),
                    ),
                  ),
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(width: 25),
              itemCount: services.length,
            ),
          ),

          //KATALOG
          ImageSlideshow(
            width: 350,
            indicatorColor: Color(0xff16A6CC),
            indicatorBackgroundColor: Color(0xffA3E3F5),
            indicatorRadius: 5,
            indicatorPadding: 15,
            indicatorBottomPadding: 0,
            autoPlayInterval: 3000,
            isLoop: true,
            onPageChanged: (value) {
              debugPrint('page changed: $value');
            },
            children: [
              Image.asset('asset/home/catalog.png'),
              Image.asset('asset/home/catalog2.png'),
              Image.asset('asset/home/catalog3.png'),
            ],
          ),
          // REKOMENDASI 4 U
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recommendation For You',
                  style: TextStyle(
                    fontFamily: 'asset/fonts/Poppins-SemiBold.ttf',
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Color(0xff16A6CC),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'See All',
                      style: TextStyle(
                        fontFamily: 'asset/fonts/Poppins-Medium.ttf',
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: Color(0xff16A6CC),
                      ),
                    ))
              ],
            ),
          ),
        ],
      )),
    );
  }
}

class _ExploreCars extends StatelessWidget {
  const _ExploreCars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Explore Cars',
            style: TextStyle(
              fontFamily: 'asset/fonts/Poppins-SemiBold.ttf',
              fontWeight: FontWeight.w600,
              fontSize: 23,
              color: Color(0xff16A6CC),
            ),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'See All',
                style: TextStyle(
                  fontFamily: 'asset/fonts/Poppins-Medium.ttf',
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                  color: Color(0xff16A6CC),
                ),
              ))
        ],
      ),
    );
  }
}

class _HeroBanner extends StatelessWidget {
  const _HeroBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      height: 210,
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
