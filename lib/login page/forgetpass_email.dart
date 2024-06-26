import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentify/login page/change_pass.dart';
import 'package:pinput/pinput.dart';

class PassEmailPage extends StatefulWidget {
  const PassEmailPage({super.key});

  @override
  State<PassEmailPage> createState() => _PassEmailPageState();
}

class _PassEmailPageState extends State<PassEmailPage> {
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

          Padding(
            padding: const EdgeInsets.fromLTRB(0, 160, 0, 0),
            child: Column(
              children: [
                SafeArea(
                  child: Center(
                    child: Text.rich(
                      textAlign: TextAlign.center,
                      TextSpan(
                        text: "Change New Password\n",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF16A6CC),
                        ),
                        children: [
                          TextSpan(
                            text:
                                "We sent to your email a 4-digit verification code\n \n\n",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Color(0xFF888888),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ), //END JUDUL 4 CODE OTP

          Padding(
            padding: const EdgeInsets.fromLTRB(28, 0, 28, 260),
            child: SizedBox(
              child: Pinput(
                length: 4,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                defaultPinTheme: PinTheme(
                    height: 50,
                    width: 75,
                    textStyle: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff16A6CC),
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(
                          color: Color(0xffA3E3F5),
                          width: 1.0,
                        ))),
              ),
            ),
          ), //END PINPUT HERE

          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Center(
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
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Color(0xFF888888))),
                    ]),
              )),
            ),
          ), // END TEXT
          SizedBox(
            height: 12,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 450, 0, 0),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Didn’t receive any email?",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color(0xFF888888),
                      ),
                    ),
                    //SizedBox(width: 8), // Add spacing between text and button
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 1.0)),
                      child: Text(
                        " Resend",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff107793),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Center(
            //BUTTON BACK EMAIL
            child: Padding(
              padding: const EdgeInsets.fromLTRB(31, 641, 32, 0),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ChangePassPage();
                      },
                    ),
                  );
                },
                icon: Image.asset(
                  'asset/login/verify button.png',
                ), // Replace with the path to your image asset.
              ),
            ),
          ),
        ],
      ),
    );
  }
}
