import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentify/Models/mobil_data.dart';
import 'package:rentify/home%20page/detail_page.dart';

class RekomendasiWidget extends StatefulWidget {
  final List<Mobil> dataMobil;
  const RekomendasiWidget(
    List<Mobil> list, {
    Key? key,
    required this.dataMobil,
  });

  @override
  State<RekomendasiWidget> createState() => _RekomendasiWidgetState();
}

class _RekomendasiWidgetState extends State<RekomendasiWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 5, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Recommendation For You',
                style: TextStyle(
                  fontFamily: 'Poppins-SemiBold', // Removed 'asset/fonts/'
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
                    fontFamily: 'Poppins-Medium', // Removed 'asset/fonts/'
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                    color: Color(0xff16A6CC),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          CarouselSlider(
            options: CarouselOptions(
              height: 146,
              enlargeFactor: 0.1,
              viewportFraction: 0.4,
              // enableInfiniteScroll: false,
            ),
            items: rekomendasi.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailPage(mobil: i))),
                    child: Container(
                      width: 128,
                      margin: EdgeInsets.symmetric(
                          horizontal: 8), // Add margin for spacing
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: const Color(0xff16A6CC),
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 11, 0, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              i.nama,
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              child: Text(
                                i.tipemobil,
                                style: GoogleFonts.poppins(
                                  color: const Color(0xff90A3BF),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(width: 45),
                            Image.asset(
                              i.gambar,
                              width: 140,
                              height: 67,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
