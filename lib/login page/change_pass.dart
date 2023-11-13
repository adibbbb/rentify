import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentify/login%20page/success_pass.dart';

class ChangePassPage extends StatefulWidget {
  const ChangePassPage({super.key});

  @override
  State<ChangePassPage> createState() => _ChangePassPageState();
}

class _ChangePassPageState extends State<ChangePassPage> {
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  //String? _passwordErrorText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF16A6CC),
      body: Form(
        key: _formKey,
        child: Stack(children: [
          Image.asset(
            'asset/login/bgchange_pass.png',
            height: double.maxFinite,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(31, 125, 0, 0),
                child: SafeArea(
                  child: Text.rich(
                    TextSpan(
                      text: "Change New Password\n",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF16A6CC),
                      ),
                      children: [
                        TextSpan(
                          text: "Enter your new password",
                          style: GoogleFonts.poppins(
                            height: 4,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: const Color(0xFF888888),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ), // END  TEXT FIELD
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 49, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(31, 12, 32, 0),
                      child: Text(
                        "New Password",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: const Color(0xFF888888),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(31, 12, 32, 0),
                      child: SizedBox(
                        width: 327,
                        height: 45,
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                controller: _passwordController,
                                obscureText: true,
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: const Color.fromARGB(165, 34, 34, 34),
                                ),
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: const Color(0xffC8EDF9),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      width: 0.8,
                                      color: Color.fromARGB(209, 2, 214, 229),
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      width: 0.8,
                                      color: Color(0xFF16A6CC),
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  hintText: 'Enter your password',
                                  hintStyle: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(165, 34, 34, 34)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Confirm Password
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(31, 12, 32, 0),
                    child: Text(
                      "Confirm Password",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: const Color(0xFF888888),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(31, 12, 32, 0),
                    child: SizedBox(
                      width: 327,
                      height: 45,
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: _confirmPasswordController,
                              obscureText: true,
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                color: const Color.fromARGB(165, 34, 34, 34),
                              ),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color(0xffC8EDF9),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    width: 0.8,
                                    color: Color.fromARGB(209, 2, 214, 229),
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    width: 0.8,
                                    color: Color(0xFF16A6CC),
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                hintText: 'Enter your password',
                                hintStyle: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(165, 34, 34, 34)),
                              ),
                              validator: (value) {
                                if (value != _passwordController.text) {
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
              ),

              // Submit button
              Padding(
                padding: const EdgeInsets.fromLTRB(31, 288, 32, 0),
                child: IconButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      // Passwords match, you can proceed with form submission.
                      // Add your code to handle the password change here.
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SuccessPage(),
                        ),
                      );
                    }
                  },
                  icon: Image.asset('asset/login/resetpass.png'),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
