import 'package:carousel_slider/carousel_slider.dart';
import 'package:collection/collection.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentify/Models/mobil_data.dart';
import 'package:rentify/home%20page/detail_page.dart';

class BrandWidget extends StatefulWidget {
  final List<Mobil> dataMobil;
  final String spec;
  const BrandWidget(List<Mobil> list, String specName,
      {Key? key, required this.dataMobil, required this.spec})
      : super(key: key);

  @override
  State<BrandWidget> createState() => _BrandWidgetState();
}

class _BrandWidgetState extends State<BrandWidget> {
  final DatabaseReference databaseReference = FirebaseDatabase.instance.ref();
  List<Mobil> mobil = [];
  List<String> mobilKeyList = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    DataSnapshot dataSnapshot = await databaseReference.child('mobils').get();

    mobil.clear();

    if (dataSnapshot.value != null && dataSnapshot.value is Map) {
      Map<String, dynamic> mobilsData =
          dataSnapshot.value as Map<String, dynamic>;
      mobilsData.forEach((key, value) {
        mobilKeyList.add(key);
        mobil.add(Mobil.fromJson(value));
      });

      setState(() {});
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: _getBrandMobil()),
    );
  }

  _getBrandMobil() {
    Map<String, List<Mobil>> groupedData = groupBy(
      mobil,
      (e) => widget.spec == 'brand'
          ? e.brand
          : widget.spec == 'seat'
              ? e.seat
              : e.transmisi,
    );

    var test = groupedData.entries.map((entry) {
      return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              entry.key.toUpperCase(),
              style: const TextStyle(
                fontFamily: 'Poppins-SemiBold',
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Color(0xff16A6CC),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 20),
              child: CarouselSlider(
                options: CarouselOptions(
                  enableInfiniteScroll: false,
                  viewportFraction: 0.9,
                  height: 146,
                  enlargeFactor: 0.05,
                  autoPlay: false,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: false,
                ),
                items: entry.value.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailPage(mobil: i))),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
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
                                Row(
                                  children: [
                                    Text(
                                      i.nama,
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
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
                                    const SizedBox(width: 75),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start, // Align the columns to the start
                                      children: [
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.storage,
                                              size: 10,
                                              color: Color(0xff90A3BF),
                                            ), // Storage icon
                                            const SizedBox(width: 6),
                                            Text(
                                              i.bensin,
                                              style: GoogleFonts.poppins(
                                                  fontSize: 10,
                                                  color:
                                                      const Color(0xff90A3BF)),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.settings,
                                              size: 10,
                                              color: Color(0xff90A3BF),
                                            ), // Settings icon
                                            const SizedBox(width: 6),
                                            Text(
                                              i.transmisi,
                                              style: GoogleFonts.poppins(
                                                  fontSize: 10,
                                                  color:
                                                      const Color(0xff90A3BF)),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                        width: 14), // Adjust the width here
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start, // Align the columns to the start
                                      children: [
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.people,
                                              size: 10,
                                              color: Color(0xff90A3BF),
                                            ), // People icon
                                            const SizedBox(width: 5),
                                            Text(
                                              i.penumpang,
                                              style: GoogleFonts.poppins(
                                                  fontSize: 10,
                                                  color:
                                                      const Color(0xff90A3BF)),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.calendar_today,
                                              size: 10,
                                              color: Color(0xff90A3BF),
                                            ), // Calendar icon
                                            const SizedBox(width: 6),
                                            Text(
                                              i.tahun,
                                              style: GoogleFonts.poppins(
                                                  fontSize: 10,
                                                  color:
                                                      const Color(0xff90A3BF)),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image.network(
                                      i.gambar,
                                      width: 140,
                                      height: 67,
                                    ),
                                    const SizedBox(width: 5),
                                    RichText(
                                      text: TextSpan(
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors
                                              .black, // Default text color
                                        ),
                                        children: [
                                          TextSpan(
                                            text: i.harga + '/',
                                            style: const TextStyle(
                                                color: Colors.green),
                                          ),
                                          const TextSpan(
                                            text: 'day',
                                            style: TextStyle(
                                                color: Color(0xff90A3BF)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
          ]);
    });
    return test.toList();
  }
}
