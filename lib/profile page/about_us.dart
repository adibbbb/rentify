import 'package:flutter/material.dart';

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
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 204, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                ),
                Image.asset(
                  'asset/profile/rentify.png',
                  width: 164,
                  height: 33,
                ),
                Divider(
                  color: Color(0xFF16A6CC),
                  thickness: 2,
                  indent: 130,
                  endIndent: 130,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(39, 0, 39, 0),
                  child: Text(
                    "Our Rentify application handles and offers car rentals for users who want to rent a car. We have a diverse collection of cars. The Rentify application will save your time when ordering a car. We help compare the best deals available in the market by offering the best prices. We ensure our customers are provided with cars at the lowest prices available in the market. We value time and want to present a new way to rent a vehicle easily & quickly. Cheap Car Rental is an ideal alternative to owning a car.",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "poppins",
                      fontWeight: FontWeight.w500,
                      color: Color(0xff16A6CC),
                    ),
                    textAlign: TextAlign.center, // Center-align the text
                  ),
                ),
                SizedBox(
                  height: 72,
                ),
                Image.asset(
                  'asset/profile/email.png',
                  width: 175,
                  height: 70,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
