import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentify/login page/forgetpass_email.dart';
// import 'package:email_auth/email_auth.dart';

class ForgetPassPage extends StatefulWidget {
  const ForgetPassPage({super.key});

  @override
  State<ForgetPassPage> createState() => _ForgetPassPageState();
}

class _ForgetPassPageState extends State<ForgetPassPage> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF16A6CC),
      body: Stack(
        children: [
          Image.asset(
            'asset/login/bgforget_password.png',
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
                      color: const Color(0xFF16A6CC),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Enter your registered email below",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: const Color(0xFF888888),
                    ),
                  ),
                  const SizedBox(height: 69),
                  Text(
                    "Email Address",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: const Color(0xFF888888),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 32, 0),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xffC8EDF9),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 0.8,
                                  color: Color.fromARGB(209, 2, 214, 229)),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 0.8,
                                color: Color(0xFF16A6CC),
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            hintText: 'rentify@gmail.com',
                            hintStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(165, 34, 34, 34)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Text(
                        "Already have an account?",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: const Color(0xFF888888),
                        ),
                      ),
                      const SizedBox(
                          width: 8), // Add spacing between text and button
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 1.0)),
                        child: Text(
                          "Sign In",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff107793),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 172, 25, 0),
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const PassEmailPage();
                                  },
                                ),
                              );
                            },
                            icon: Image.asset(
                              'asset/login/submt.png',
                            ), // Replace with the path to your image asset.
                          ),
                        ),
                      ),
                    ],
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
