import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PassEmailPage extends StatelessWidget {
  const PassEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF16A6CC),
      body: Stack(
        children: [
          Image.asset(
            'asset/login/forgetpass_email.png',
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
                    text: "Check Your Email\n",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF16A6CC),
                    ),
                    children: [
                      TextSpan(
                          text:
                              "We have sent a password recovery \nto your registered email\n \n\n",
                          style: GoogleFonts.poppins(
                              fontSize: 14, color: Color(0xFF888888))),
                      TextSpan(
                          text: "Didn’t receive any email? ",
                          style: GoogleFonts.poppins(
                              fontSize: 14, color: Color(0xFF888888))),
                    ]),
              )),
            ),
          ),
          SizedBox(height: 12),
          Center(
            child: Row(
              children: [
                Text(
                  "Already have an account?",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: Color(0xFF888888),
                  ),
                ),
                SizedBox(width: 8), // Add spacing between text and button
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Color(0xff107793),
                    //foregroundColor: Color.fromARGB(206, 0, 68, 156),
                    textStyle: const TextStyle(
                        fontSize: 12,
                        fontFamily: "poppins",
                        fontWeight: FontWeight.w700),
                  ),
                  onPressed: () {
                    // Add your submit button functionality here
                  },
                  child: Text("Sign in"),
                ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 641, 0, 0),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'asset/login/backemail.png',
                ), // Replace with the path to your image asset.
              ),
            ),
          ),
        ],
      ),
    );
  }
}
