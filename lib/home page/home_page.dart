import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:rentify/button_nav_bar.dart';
import 'package:rentify/home%20page/detail_page.dart';

var services = ["Most Rented", "Brand", "Seat", "Transmission"];
var selectedService = 0;

class KatalogMobil {
  final String gambar;
  final String nama;

  const KatalogMobil({
    required this.gambar,
    required this.nama,
  });
}

class RekomendasiMobil {
  final String image;

  const RekomendasiMobil({
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

  List<RekomendasiMobil> items = [
    const RekomendasiMobil(image: 'asset/home/rekomendasi.png'),
    const RekomendasiMobil(image: 'asset/home/rekomendasi2.png'),
    const RekomendasiMobil(image: 'asset/home/rekomendasi3.png'),
  ];

  List<KatalogMobil> mobil = [
    const KatalogMobil(gambar: 'asset/home/katalog.png', nama: 'Terios'),
    const KatalogMobil(gambar: 'asset/home/katalog2.png', nama: 'Apanja'),
    const KatalogMobil(gambar: 'asset/home/katalog3.png', nama: 'Agiya'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      bottomNavigationBar: const BottomNavBar(),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            const _HeroBanner(),
            const _ExploreCars(),

            // SEARCH BAR
            SizedBox(
              height: 31,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffC8EDF9),
                      contentPadding: const EdgeInsets.symmetric(vertical: 1),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                            width: 1, color: Color(0xff16A6CC)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                            width: 1, color: Color(0xff16A6CC)),
                      ),
                      hintText: 'Cari Mobil Apa Hari Ini',
                      hintStyle: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff90A3BF),
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 18,
                        color: Color(0xff16A6CC),
                      )),
                ),
              ),
            ),

            const SizedBox(
              height: 15,
            ),

            //SERVICES
            SizedBox(
              height: 24,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedService = index;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: selectedService == index
                          ? const Color(0xff7ED8F1)
                          : const Color(0xffA3E3F5),
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
                              : const Color(0xff90A3BF),
                        ),
                      ),
                    ),
                  ),
                ),
                separatorBuilder: (context, index) => const SizedBox(width: 25),
                itemCount: services.length,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            if (selectedService == 0) ...{
              //KATALOG
              Column(
                children: [
                  SizedBox(
                    height: 146,
                    width: 450,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        enlargeFactor: 0.2,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 3),
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                      ),
                      items: mobil.map((item) {
                        return katalog(context, item: item);
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: mobil.asMap().entries.map((entry) {
                      final int index = entry.key;
                      return Container(
                        width: 8.0,
                        height: 8.0,
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentIndex == index
                              ? const Color(0xff16A6CC)
                              : const Color(0xffA3E3F5),
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
                    const Text(
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
                        child: const Text(
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
              SizedBox(
                height: 146,
                width: 350,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 14,
                  ),
                  itemBuilder: (context, index) =>
                      rekomendasi(item: items[index]),
                ),
              )
            } else if (selectedService == 1) ...{
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    const Text(
                      'Toyota',
                      style: TextStyle(
                        fontFamily: 'asset/fonts/Poppins-SemiBold.ttf',
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Color(0xff16A6CC),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('asset/home/arrow.png'),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 146,
                width: 390,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 0),
                  itemBuilder: (context, index) =>
                      katalog(context, item: mobil[index]),
                ),
              ),
              // Honda
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    const Text(
                      'Honda',
                      style: TextStyle(
                        fontFamily: 'asset/fonts/Poppins-SemiBold.ttf',
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Color(0xff16A6CC),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('asset/home/arrow.png'),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 146,
                width: 390,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 0),
                  itemBuilder: (context, index) =>
                      katalog(context, item: mobil[index]),
                ),
              )
            } else if (selectedService == 2) ...{
              //1-4 seats
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    const Text(
                      '1-4 Seats',
                      style: TextStyle(
                        fontFamily: 'asset/fonts/Poppins-SemiBold.ttf',
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Color(0xff16A6CC),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('asset/home/arrow.png'),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 146,
                width: 390,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 0),
                  itemBuilder: (context, index) =>
                      katalog(context, item: mobil[index]),
                ),
              ),
              // 1-8 seats
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    const Text(
                      '1-8 Seats',
                      style: TextStyle(
                        fontFamily: 'asset/fonts/Poppins-SemiBold.ttf',
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Color(0xff16A6CC),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('asset/home/arrow.png'),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 146,
                width: 390,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 0),
                  itemBuilder: (context, index) =>
                      katalog(context, item: mobil[index]),
                ),
              )
            } else if (selectedService == 3) ...{
              // Auto
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    const Text(
                      'Auto',
                      style: TextStyle(
                        fontFamily: 'asset/fonts/Poppins-SemiBold.ttf',
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Color(0xff16A6CC),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('asset/home/arrow.png'),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 146,
                width: 390,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 0),
                  itemBuilder: (context, index) =>
                      katalog(context, item: mobil[index]),
                ),
              ),
              // Manual
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    const Text(
                      'Manual',
                      style: TextStyle(
                        fontFamily: 'asset/fonts/Poppins-SemiBold.ttf',
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Color(0xff16A6CC),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('asset/home/arrow.png'),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 146,
                width: 390,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 0),
                  itemBuilder: (context, index) =>
                      katalog(context, item: mobil[index]),
                ),
              )
            }
          ],
        )),
      ),
    );
  }
}

Widget katalog(
  BuildContext context, {
  required KatalogMobil item,
}) =>
    SizedBox(
      width: 345,
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: const Color(0xff16A6CC),
                  width: 1.0,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailPage(mobil: item))),
                  child: Image.asset(
                    item.gambar,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );

Widget rekomendasi({
  required RekomendasiMobil item,
}) =>
    SizedBox(
      width: 128,
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  color: const Color(0xff16A6CC),
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
  const _ExploreCars();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
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
              child: const Text(
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
  const _HeroBanner();

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
