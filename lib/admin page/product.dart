import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentify/Models/mobil_data.dart';
import 'package:rentify/admin%20page/addproduct.dart';
import 'package:rentify/admin%20page/navbaradmin.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final DatabaseReference databaseReference = FirebaseDatabase.instance.ref();
  List<Mobil> mobileDataList = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    DataSnapshot dataSnapshot = await databaseReference.child('mobils').get();

    mobileDataList.clear();

    if (dataSnapshot.value != null && dataSnapshot.value is Map) {
      Map<String, dynamic> mobilsData =
          dataSnapshot.value as Map<String, dynamic>;

      mobilsData.forEach((key, value) {
        mobileDataList.add(Mobil.fromJson(value));
      });

      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(31, 100, 0, 0),
              child: Text(
                "Product",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF16A6CC),
                ),
              ),
            ), // END TITLE

            Padding(
              padding: const EdgeInsets.fromLTRB(55, 170, 55, 40),
              child: ListView(
                children: [
                  Container(
                    width: 280,
                    height: 146,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14.0),
                      border: Border.all(
                        color: const Color(0xFF16A6CC),
                        width: 1,
                      ),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.add,
                        size: 38,
                        color: Color(0xFF16A6CC),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const AddProduct();
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 17),
                  Expanded(
                    flex: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: mobileDataList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 17),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: const Color(0xff16A6CC),
                                  width: 1.0,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(15, 5, 5, 5),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          mobileDataList[index].nama,
                                          style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.close,
                                              size: 14,
                                              color: Color(0xFF16A6CC),
                                            )),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 40,
                                          child: Text(
                                            mobileDataList[index].tipemobil,
                                            style: GoogleFonts.poppins(
                                              color: const Color(0xff90A3BF),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 45),
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
                                                  mobileDataList[index].bensin,
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 10,
                                                      color: const Color(
                                                          0xff90A3BF)),
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
                                                  mobileDataList[index]
                                                      .transmisi,
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 10,
                                                      color: const Color(
                                                          0xff90A3BF)),
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
                                                  mobileDataList[index]
                                                      .penumpang,
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 10,
                                                      color: const Color(
                                                          0xff90A3BF)),
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
                                                  mobileDataList[index].tahun,
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 10,
                                                      color: const Color(
                                                          0xff90A3BF)),
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
                                          mobileDataList[index].gambar,
                                          loadingBuilder: (context, child,
                                              loadingProgress) {
                                            if (loadingProgress != null) {
                                              print(loadingProgress
                                                  .cumulativeBytesLoaded);
                                              return CircularProgressIndicator(
                                                  value: loadingProgress
                                                          .cumulativeBytesLoaded /
                                                      loadingProgress
                                                          .expectedTotalBytes!);
                                            }
                                            return child;
                                          },
                                          width: 126,
                                          height: 59,
                                          scale: 1,
                                          repeat: ImageRepeat.noRepeat,
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
                                                text: mobileDataList[index]
                                                        .harga +
                                                    '/',
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
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
