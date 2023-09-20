import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:rentify/button_nav_bar.dart';


var services = ["Most Rented", "Brand", "Seat", "Transmission"];
var selectedService = 0;

class katalogmobil {
  final String gambar;

  const katalogmobil({
    required this.gambar,
  });
}

class rekomendasimobil {
  final String image;

  const rekomendasimobil({
    required this.image,
  });
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  List<rekomendasimobil> items = [
    rekomendasimobil(image: 'asset/home/rekomendasi.png'),
    rekomendasimobil(image: 'asset/home/rekomendasi2.png'),
    rekomendasimobil(image: 'asset/home/rekomendasi3.png'),
  ];

  List<katalogmobil> mobil = [
    katalogmobil(gambar: 'asset/home/katalog.png'),
    katalogmobil(gambar: 'asset/home/katalog2.png'),
    katalogmobil(gambar: 'asset/home/katalog3.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavBar(),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            _HeroBanner(),
            _ExploreCars(),

            // SEARCH BAR
            SizedBox(
              height: 31,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffC8EDF9),
                      contentPadding: EdgeInsets.symmetric(vertical: 1),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide:
                            BorderSide(width: 1, color: Color(0xff16A6CC)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide:
                            BorderSide(width: 1, color: Color(0xff16A6CC)),
                      ),
                      hintText: 'Cari Mobil Apa Hari Ini',
                      hintStyle: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff90A3BF),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 18,
                        color: Color(0xff16A6CC),
                      )),
                ),
              ),
            ),

            SizedBox(
              height: 15,
            ),

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
            SizedBox(
              height: 15,
            ),

            //KATALOG
            Column(
              children: [
                Container(
                  height: 146,
                  width: 450,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      enlargeFactor: 0.2,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                    ),
                    items: mobil.map((item) {
                      return katalog(item: item);
                    }).toList(),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: mobil.asMap().entries.map((entry) {
                    final int index = entry.key;
                    return Container(
                      width: 8.0,
                      height: 8.0,
                      margin: EdgeInsets.symmetric(horizontal: 4.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            _currentIndex == index ? Color(0xff16A6CC) : Color(0xffA3E3F5),
                      ),
                    );
                  }).toList(),
                ),
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

            //KATALOG REKOMENDASI 4 U
            Container(
              height: 146,
              width: 350,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                separatorBuilder: (context, index) => SizedBox(
                  width: 14,
                ),
                itemBuilder: (context, index) =>
                    rekomendasi(item: items[index]),
              ),
            )
          ],
        )),
      ),
    );
  }
}

Widget katalog({
  required katalogmobil item,
}) =>
    Container(
      width: 345,
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Color(0xff16A6CC),
                  width: 1.0,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.asset(
                  item.gambar,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );

Widget rekomendasi({
  required rekomendasimobil item,
}) =>
    Container(
      width: 128,
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  color: Color(0xff16A6CC),
                  width: 1.0,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.asset(
                  item.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );

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
