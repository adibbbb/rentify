import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'asset/profile/AboutUs.png',
            height: double.maxFinite,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 60.0,
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
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 86.0,
            right: 28.0,
            child: Container(
              width: 163,
              height: 42,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(139, 61, 61, 61)
                          .withOpacity(0.5), // Shadow color
                      spreadRadius: 2, // Spread radius
                      blurRadius: 4, // Blur radius
                      offset: const Offset(
                          0, 2), // Offset in the x and y directions
                    )
                  ]),
              child: Center(
                child: Text(
                  "About Us",
                  style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF16A6CC),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 204, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Align(
                  alignment: Alignment.center,
                ),
                Image.asset(
                  'asset/profile/rentify.png',
                  width: 164,
                  height: 33,
                ),
                const Divider(
                  color: Color(0xFF16A6CC),
                  thickness: 2,
                  indent: 130,
                  endIndent: 130,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(39, 0, 39, 0),
                  child: Text(
                    "Our Rentify application handles and offers car rentals for users who want to rent a car. We have a diverse collection of cars. The Rentify application will save your time when ordering a car. We help compare the best deals available in the market by offering the best prices. We ensure our customers are provided with cars at the lowest prices available in the market. We value time and want to present a new way to rent a vehicle easily & quickly. Cheap Car Rental is an ideal alternative to owning a car.",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF16A6CC),
                    ),
                    textAlign: TextAlign.center, // Center-align the text
                  ),
                ),
                const SizedBox(
                  height: 72,
                ),
                Image.asset(
                  'asset/profile/email.png',
                  width: 175,
                  height: 70,
                ),
                const SizedBox(
                  height: 65,
                ),
                Image.asset(
                  'asset/profile/lgogo.png',
                  width: 82,
                  height: 83,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
