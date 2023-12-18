import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentify/login page/login.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF16A6CC),
      body: Stack(children: [
        Image.asset(
          'asset/login/bgsuccess.png',
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
                        text: "Check your email to reset the password! ",
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
                    },
                  ),
                );
              },
              icon: Image.asset(
                'asset/login/rightarrow.png',
              ), // Replace with the path to your image asset.
            ),
          ),
        ),
      ]),
    );
  }
}
