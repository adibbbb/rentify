import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF16A6CC),
      body: Stack(children: [
        Image.asset(
          'assets/bgsuccess.png',
          height: double.maxFinite,
          width: double.maxFinite,
          fit: BoxFit.cover,
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 49, 0, 0),
            child: SafeArea(
                child: Text.rich(
              textAlign: TextAlign.center,
              TextSpan(
                  text: "Password Reset Successful\n",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF16A6CC),
                  ),
                  children: [
                    TextSpan(
                        text:
                            "Awesome! You’ve successfully\nupdated your password ",
                        style: GoogleFonts.poppins(
                            fontSize: 14, color: Color(0xFF888888)))
                  ]),
            )),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 259, 0, 0),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                'rightarrow.png',
              ), // Replace with the path to your image asset.
            ),
          ),
        ),
      ]),
    );
  }
}
