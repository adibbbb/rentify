import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:rentify/Models/mobil_data.dart';
import 'package:rentify/Widgets/brandWidget.dart';
import 'package:rentify/Widgets/katalogWidget.dart';
import 'package:rentify/Widgets/rekomendasiWidget.dart';

var services = ["Most Rented", "Brand", "Seat", "Transmission"];
var selectedService = 0;

class HomePagee extends StatefulWidget {
  const HomePagee({Key? key}) : super(key: key);

  @override
  State<HomePagee> createState() => _HomePageeState();
}

class _HomePageeState extends State<HomePagee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            ImageSlideshow(
              width: double.infinity,
              height: 210,
              indicatorRadius: 5,
              indicatorPadding: 10,
              indicatorBottomPadding: 20,
              indicatorBackgroundColor: Color(0xff16A6CC),
              initialPage: 0,
              indicatorColor: const Color(0xffA3E3F5),
              onPageChanged: (value) {
                print('Page changed: $value');
              },
              autoPlayInterval: 3000,
              isLoop: true,
              children: [
                Image.asset(
                  'asset/home/banner2.png',
                  fit: BoxFit.fitWidth,
                ),
                Image.asset(
                  'asset/home/banner3.png',
                  fit: BoxFit.fitWidth,
                ),
              ],
            ),
            // EXPLORE CARS
            Padding(
              padding: const EdgeInsets.fromLTRB(23, 205, 22, 0),
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
            ),

            // SEARCH BAR
            Padding(
              padding: const EdgeInsets.fromLTRB(23, 243, 21, 0),
              child: Container(
                width: 346,
                height: 31,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xffC8EDF9),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(width: 1, color: Color(0xff16A6CC)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(width: 1, color: Color(0xff16A6CC)),
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
                    ),
                  ),
                ),
              ),
            ),

            //SERVICES
            Padding(
              padding: const EdgeInsets.fromLTRB(22, 293, 22, 0),
              child: Column(
                children: [
                  Container(
                    height: 25,
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedService = index;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            color: selectedService == index
                                ? const Color(0xff7ED8F1)
                                : const Color(0xffA3E3F5),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: const Color(0xff16A6CC),
                              width: 1, // Set the border width here
                            ),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
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
                              ],
                            ),
                          ),
                        ),
                      ),
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 25),
                      itemCount: services.length,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  if (selectedService == 0) ...{
                    KatalogMobilWidget(dataMobil: mobil, []),
                    RekomendasiWidget(dataMobil: mobil, []),
                  } else if (selectedService == 1) ...{
                    BrandWidget(mobil, 'brand', dataMobil: mobil, spec: 'brand')
                  } else if (selectedService == 2) ...{
                    BrandWidget(mobil, 'brand', dataMobil: mobil, spec: 'seat')
                  } else if (selectedService == 3) ...{
                    BrandWidget(mobil, 'brand',
                        dataMobil: mobil, spec: 'transmisi')
                  }
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
