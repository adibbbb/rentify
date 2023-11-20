import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

class DetailTransaction extends StatelessWidget {
  const DetailTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
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
              "user812389120 wants to rent a car, please check the details bellow",
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
              "All New Terios",
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
              "user812389120",
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
                      "081234521273",
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
                        const ClipboardData(text: "081234521273"));
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
          )
        ],
      ),
    );
  }
}
