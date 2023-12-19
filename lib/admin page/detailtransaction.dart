import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:rentify/admin%20page/navbaradmin.dart';
import 'package:rentify/admin%20page/transaction.dart';

class DetailTransaction extends StatelessWidget {
  const DetailTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 40.0,
            left: 27.0,
            child: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF7ED8F1),
              ),
              child: Align(
                alignment: Alignment.center,
                child: IconButton(
                  onPressed: () {
                   
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(31, 100, 0, 0),
            child: Text(
              "Detail Transaction",
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF16A6CC),
              ),
            ),
          ), // END TITLE
          Padding(
            padding: const EdgeInsets.fromLTRB(33, 182, 10, 0),
            child: Text(
              "Satria wants to rent a car, please check the details bellow",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF1A202C),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(47, 254, 0, 0),
            child: Text(
              "Product : ",
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF1A202C),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(47, 274, 0, 0),
            child: Text(
              "Toyota Avanza",
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF1A202C),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(47, 310, 0, 0),
            child: Text(
              "Rent by : ",
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF1A202C),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(47, 328, 0, 0),
            child: Text(
              "Satria",
              style: GoogleFonts.poppins(
                fontSize: 8,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF1A202C),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(47, 368, 0, 0),
            child: Text(
              "Contact : ",
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF1A202C),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(47, 385, 0, 0),
                child: Row(
                  children: [
                    Text(
                      "-",
                      style: GoogleFonts.poppins(
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF1A202C),
                      ),
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 385),
                child: InkWell(
                  onTap: () {
                    Clipboard.setData(
                        const ClipboardData(text: "-"));
                  },
                  child: Row(
                    children: [
                      const SizedBox(width: 8),
                      Image.asset(
                        'asset/admin/logo copy.png',
                        width: 10,
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 385),
                child: Image.asset(
                  'asset/admin/divider.png',
                  width: 4,
                  height: 10,
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 385, 0, 0),
                child: Row(
                  children: [
                    Text(
                      "satriasyaiful004@gmail.com",
                      style: GoogleFonts.poppins(
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF1A202C),
                      ),
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 385),
                child: InkWell(
                  onTap: () {
                    Clipboard.setData(
                        const ClipboardData(text: "satriasyaiful004@gmail.com"));
                  },
                  child: Row(
                    children: [
                      const SizedBox(width: 8),
                      Image.asset(
                        'asset/admin/logo copy.png',
                        width: 10,
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(46, 446, 37, 0),
            child: Text(
              "This user already suitable with system procedures, accept for rent?",
              style: GoogleFonts.poppins(
                fontSize: 9,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF1A9E50),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 495, right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                      Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          NavbarAdmin()),
                                );
                  },
                  child: Image.asset(
                    'asset/admin/accept.png',
                    width: 102,
                    height: 26,
                  ),
                ),
                InkWell(
                  onTap: () {
                      Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          NavbarAdmin()),
                                );
                  },
                  child: Image.asset(
                    'asset/admin/reject.png',
                    width: 102,
                    height: 26,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
