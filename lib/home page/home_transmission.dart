import 'package:flutter/material.dart';
import 'package:rentify/button_nav_bar.dart';
import 'package:rentify/home%20page/herobanner.dart';
import 'package:rentify/home%20page/home_brand.dart';


var services = ["Most Rented", "Brand", "Seat", "Transmission"];
var selectedService = 0;

class HomeTransmisson extends StatefulWidget {
  const HomeTransmisson({super.key});

  @override
  State<HomeTransmisson> createState() => _HomeTransmissonState();
}

class _HomeTransmissonState extends State<HomeTransmisson> {

  List<kataloggmobil> mobil = [
    kataloggmobil(gambar: 'asset/home/katalog.png'),
    kataloggmobil(gambar: 'asset/home/katalog2.png'),
    kataloggmobil(gambar: 'asset/home/katalog3.png'),
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
            HeroBanner(),
            // Explore cars
            Padding(
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
            ),

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

            //Brand
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
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

            //KATALOG BRAND 
            Container(
              height: 146,
              width: 390,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                separatorBuilder: (context, index) => Padding(padding: EdgeInsets.all(0)),
                itemBuilder: (context, index) =>
                    katalogg(item: mobil[index]),
              ),
            ),

            //Brand 2
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
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

            //KATALOG BRAND 2
            Container(
              height: 146,
              width: 390,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                separatorBuilder: (context, index) => Padding(padding: EdgeInsets.all(0)),
                itemBuilder: (context, index) =>
                    katalogg(item: mobil[index]),
              ),
            )
          

          ],
        )),
      ),
    );
  }
}
