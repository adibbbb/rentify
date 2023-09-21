import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentify/login%20page/sign_up.dart';
import 'package:rentify/login page/forget_password.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'asset/login/login bg.png',
            height: double.maxFinite,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 150),
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 300,
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Welcome Back",
                              style: GoogleFonts.poppins(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 3),
                            Text(
                              "Login to access your account",
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF888888),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 41),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35, 12, 32, 0),
                        child: Text(
                          "Email Address",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: Color(0xFF888888),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35, 12, 32, 0),
                        child: SizedBox(
                          height: 45,
                          child: Column(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: emailController,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Color(0xffC8EDF9),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 0.8,
                                          color:
                                              Color.fromARGB(209, 2, 214, 229)),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 0.8,
                                        color: Color(0xFF16A6CC),
                                      ),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    hintText: 'rentify@gmail.com',
                                    hintStyle: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromARGB(165, 34, 34, 34)),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ), // END TEXT FIELD EMAIL
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35, 0, 32, 0),
                        child: Text(
                          "Password",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: Color(0xFF888888),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35, 0, 32, 0),
                        child: SizedBox(
                          height: 45,
                          child: Column(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: passwordController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Color(0xffC8EDF9),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 0.8,
                                          color:
                                              Color.fromARGB(209, 2, 214, 229)),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 0.8,
                                        color: Color(0xFF16A6CC),
                                      ),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    hintText: 'Enter your password',
                                    hintStyle: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromARGB(165, 34, 34, 34)),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ), // END TEXT FIELD PASSWORD
                      SizedBox(
                          height: 14), // Add spacing between text and button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 26, 0),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return ForgetPassPage();
                                    },
                                  ),
                                );
                              },
                              style: TextButton.styleFrom(),
                              child: Text(
                                "Forget Password?",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff107793),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ), //END FORGET PASSWORD?
                    ],
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(35, 610, 28, 0),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignUpPage();
                      },
                    ),
                  );
                },
                icon: Image.asset(
                  'asset/login/login button.png',
                ), // Replace with the path to your image asset.
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 720, 0, 0),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Didn’t have an account?",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    //SizedBox(width: 8), // Add spacing between text and button
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return SignUpPage();
                            },
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 2.0)),
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
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
        ],
      ),
    );
  }
}
