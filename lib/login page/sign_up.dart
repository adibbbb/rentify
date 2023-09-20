import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentify/login%20page/login.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        key: _formKey,
        children: [
          Image.asset(
            'asset/login/Sign Up.png',
            height: double.maxFinite,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: SafeArea(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 115,
                          ),
                          Text(
                            "Create Account",
                            style: GoogleFonts.poppins(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            "Fill your information below",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFA3E3F5),
                            ),
                          ),
                        ],
                      ),
                    ), //END JUDUL
                    SizedBox(height: 45),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(35, 12, 32, 0),
                      child: Text(
                        "First Name",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Color(0xFF888888),
                        ),
                      ),
                    ), //END first name JUDUL KECIL
                    Padding(
                      padding: const EdgeInsets.fromLTRB(35, 12, 32, 0),
                      child: SizedBox(
                        height: 45,
                        child: Column(
                          children: [
                            Expanded(
                              child: TextFormField(
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
                                  hintText: 'first name',
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
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(35, 12, 32, 0),
                      child: Text(
                        "Last Name",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Color(0xFF888888),
                        ),
                      ),
                    ), //END last name JUDUL KECIL
                    Padding(
                      padding: const EdgeInsets.fromLTRB(35, 12, 32, 0),
                      child: SizedBox(
                        height: 45,
                        child: Column(
                          children: [
                            Expanded(
                              child: TextFormField(
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
                                  hintText: 'last name',
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
                    ), // END TEXT LAST NAME
                    SizedBox(height: 5),
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
                    //
                    //
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(35, 0, 32, 0),
                            child: Text(
                              "Password",
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
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      controller: passwordController,
                                      obscureText: true,
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: Color.fromARGB(165, 34, 34, 34),
                                      ),
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Color(0xffC8EDF9),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            width: 0.8,
                                            color: Color.fromARGB(
                                                209, 2, 214, 229),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            width: 0.8,
                                            color: Color(0xFF16A6CC),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        hintText: 'Enter your password',
                                        hintStyle: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromARGB(
                                                165, 34, 34, 34)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ), //END PASSWORD
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(35, 12, 32, 0),
                          child: Text(
                            "Confirm Password",
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
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: _confirmPasswordController,
                                    obscureText: true,
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: Color.fromARGB(165, 34, 34, 34),
                                    ),
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Color(0xffC8EDF9),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          width: 0.8,
                                          color:
                                              Color.fromARGB(209, 2, 214, 229),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          width: 0.8,
                                          color: Color(0xFF16A6CC),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      hintText: 'Enter your password',
                                      hintStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromARGB(165, 34, 34, 34)),
                                    ),
                                    validator: (value) {
                                      if (value != passwordController.text) {
                                        return "Passwords do not match";
                                      }
                                      return null;
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ), // END PASSWORD
                    // Submit button
                    Padding(
                      padding: const EdgeInsets.fromLTRB(32, 40, 31, 0),
                      child: MaterialButton(
                        onPressed: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            // Passwords match, you can proceed with form submission.
                            // Add your code to handle the password change here.
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ),
                            );
                          }
                        },
                        child: Image.asset('asset/login/sign up button.png'),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account?",
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
                                        return LoginPage();
                                      },
                                    ),
                                  );
                                },
                                style: TextButton.styleFrom(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 2.0)),
                                child: Text(
                                  "Sign In",
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
                )),
              )
            ],
          )
        ],
      ),
    );
  }
}
