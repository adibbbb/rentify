import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentify/Models/mobil_data.dart';
import 'package:rentify/home%20page/order_form.dart';

class DetailPage extends StatelessWidget {
  final Mobil mobil;

  const DetailPage({
    Key? key,
    required this.mobil,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Latar belakang biru
          Container(
            width: 400,
            height: 184,
            color: const Color(0xff16A6CC),
          ),
          // Tombol "Back" di kiri atas
          Padding(
            padding: const EdgeInsets.fromLTRB(34, 50, 0, 0),
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xff7ED8F1),
                shape: BoxShape.circle, // Bentuk lingkaran
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          // Gambar dengan BorderRadius
          Padding(
            padding: const EdgeInsets.fromLTRB(34, 100, 34, 0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(20), // BorderRadius untuk gambar
                child: Image.network(
                  mobil.gambar,
                  fit: BoxFit.cover,
                  width: 321,
                  height: 191,
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(36, 310, 40, 0),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: mobil.harga,
                    style: const TextStyle(
                      fontFamily: 'asset/fonts/Poppins-SemiBold.ttf',
                      fontWeight: FontWeight.w600,
                      color: Colors.green,
                      fontSize: 28,
                    ),
                  ),
                  const WidgetSpan(
                    child: SizedBox(width: 5),
                  ),
                  const TextSpan(
                    text: '/day',
                    style: TextStyle(
                      fontFamily: 'asset/fonts/Poppins-Regular.ttf',
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // NAMA KENDARAAN
          Padding(
            padding: const EdgeInsets.fromLTRB(36, 350, 0, 0),
            child: Text(
              mobil.nama,
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(36, 370, 36, 0),
            child: Divider(
              color: Colors.black,
              thickness: 1.0,
            ),
          ),

          // ICON KENDARAAN
          Padding(
            padding: const EdgeInsets.fromLTRB(36, 380, 80, 0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Image.asset(
                              'asset/product/orang.png',
                              width: 32,
                              height: 32,
                            ),
                            const SizedBox(width: 8),
                            Text(mobil.penumpang,
                                style: GoogleFonts.poppins(
                                    fontSize: 10, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Image.asset(
                              'asset/product/fuel.png',
                              width: 32,
                              height: 32,
                            ),
                            const SizedBox(width: 8),
                            Text(mobil.cc,
                                style: GoogleFonts.poppins(
                                    fontSize: 10, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Image.asset(
                              'asset/product/gas.png',
                              width: 32,
                              height: 32,
                            ),
                            const SizedBox(width: 8),
                            Text(mobil.bensin,
                                style: GoogleFonts.poppins(
                                    fontSize: 10, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Image.asset(
                              'asset/product/transmission.png',
                              width: 32,
                              height: 32,
                            ),
                            const SizedBox(width: 8),
                            Text(mobil.transmisi,
                                style: GoogleFonts.poppins(
                                    fontSize: 10, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Service Information
          Padding(
            padding: const EdgeInsets.fromLTRB(36, 470, 0, 0),
            child: Text(
              "Service Information",
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(36, 490, 36, 0),
            child: Divider(
              color: Colors.black,
              thickness: 1.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(36, 510, 0, 0),
            child: Text(
              "Facility",
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          // ISI KONTEN FACILITY
          Padding(
            padding: const EdgeInsets.fromLTRB(36, 535, 0, 0),
            child: Row(
              children: [
                Image.asset(
                  'asset/product/piala.png',
                  width: 20,
                  height: 20,
                ),
                const SizedBox(width: 14),
                Text(
                  "24 hour emergency call",
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(36, 560, 0, 0),
            child: Row(
              children: [
                Image.asset(
                  'asset/product/mobil.png',
                  width: 20,
                  height: 20,
                ),
                const SizedBox(width: 14),
                Text(
                  "Breakdown replacement car",
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(36, 585, 0, 0),
            child: Row(
              children: [
                Image.asset(
                  'asset/product/tambah.png',
                  width: 20,
                  height: 20,
                ),
                const SizedBox(width: 14),
                Text(
                  "Life insurance",
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(36, 610, 36, 0),
            child: Divider(
              color: Colors.black,
              thickness: 1.0,
            ),
          ),

          // Term and Condition
          Padding(
            padding: const EdgeInsets.fromLTRB(36, 630, 0, 0),
            child: Text(
              "Term and Condition",
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          // ISI KONTEN TERM AND CONDITION
          Padding(
            padding: const EdgeInsets.fromLTRB(36, 655, 0, 0),
            child: Row(
              children: [
                Image.asset(
                  'asset/product/kartu.png',
                  width: 20,
                  height: 20,
                ),
                const SizedBox(width: 14),
                Text(
                  "Identification card required",
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(36, 680, 0, 0),
            child: Row(
              children: [
                Image.asset(
                  'asset/product/dollar.png',
                  width: 20,
                  height: 20,
                ),
                const SizedBox(width: 14),
                Text(
                  "Fuel, Toll, and Parking Fee not included",
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(36, 705, 0, 0),
            child: Row(
              children: [
                Image.asset(
                  'asset/product/map.png',
                  width: 20,
                  height: 20,
                ),
                const SizedBox(width: 14),
                Text(
                  "Not for out town drop off",
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(36, 730, 0, 0),
            child: Row(
              children: [
                Image.asset(
                  'asset/product/123.png',
                  width: 20,
                  height: 20,
                ),
                const SizedBox(width: 14),
                Text(
                  "Couldn’t select odd/event plate number",
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          // BUTTON
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 760, 20, 0),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const OrderForm();
                  }));
                },
                icon: Image.asset('asset/product/next.png')),
          ),
        ],
      ),
    );
  }
}
