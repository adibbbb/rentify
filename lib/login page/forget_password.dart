import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPassPage extends StatefulWidget {
  TextEditingController emailController = TextEditingController(text: "");

  @override
  State<ForgetPassPage> createState() => _ForgetPassPageState();
}

class _ForgetPassPageState extends State<ForgetPassPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF16A6CC),
      body: Stack(
        children: [
          Image.asset(
            'assets/bgforget_password.png',
            height: double.maxFinite,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(31, 279, 0, 0),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Forget Password",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF16A6CC),
                    ),
                  ),
                  SizedBox(height: 10), // Add some spacing
                  Text(
                    "Enter your registered email below",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Color(0xFF888888),
                    ),
                  ),
                  SizedBox(height: 69), // Add some spacing
                  Text(
                    "Email Address",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Color(0xFF888888),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 32, 0),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: widget.emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffC8EDF9),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 0.8,
                                    color: Color.fromARGB(209, 2, 214, 229)),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              hintText: 'rentify@gmail.com',
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(165, 34, 34, 34))

                              // You can add more styling and validation here
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
