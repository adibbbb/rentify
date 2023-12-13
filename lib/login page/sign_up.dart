import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:rentify/login%20page/login.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  Future<void> _register() async {
    try {
      if (_formKey.currentState?.validate() ?? false) {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: emailController.text,
                password: passwordController.text);

        // Menyimpan data pengguna ke Firebase Realtime Database
        await saveUserDataToFirebase(userCredential.user);

        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const LoginPage(),
          ),
        );
      }
    } catch (e) {
      print('Error during registration: $e');
      // Handle registration errors here
      // For example, show an error message to the user
    }
  }

  // Fungsi untuk menyimpan data pengguna ke Firebase Realtime Database
  Future<void> saveUserDataToFirebase(User? user) async {
    if (user != null) {
      final DatabaseReference databaseReference = FirebaseDatabase.instance.reference().child('users');

      // Mendapatkan timestamp saat ini
      final int timestamp = DateTime.now().millisecondsSinceEpoch;

      await databaseReference.child(user.uid).set({
        'uid': user.uid,  // Menyimpan user ID
        'firstName': firstNameController.text,
        'lastName': lastNameController.text,
        'email': user.email,
        'dt': timestamp,  // Menyimpan timestamp
        // Tambahkan kolom lain sesuai kebutuhan
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
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
                            const SizedBox(
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
                            const SizedBox(height: 3),
                            Text(
                              "Fill your information below",
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFFA3E3F5),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 45),
                      Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(35, 12, 32, 0),
                              child: Text(
                                "First Name",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: const Color(0xFF888888),
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(35, 12, 32, 0),
                              child: SizedBox(
                                height: 45,
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        controller: firstNameController,
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: const Color(0xffC8EDF9),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                width: 0.8,
                                                color: Color.fromARGB(
                                                    209, 2, 214, 229)),
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              width: 0.8,
                                              color: Color(0xFF16A6CC),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                          hintText: 'First name',
                                          hintStyle: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  165, 34, 34, 34)),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(35, 12, 32, 0),
                              child: Text(
                                "Last Name",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: const Color(0xFF888888),
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(35, 12, 32, 0),
                              child: SizedBox(
                                height: 45,
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        controller: lastNameController,
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: const Color(0xffC8EDF9),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                width: 0.8,
                                                color: Color.fromARGB(
                                                    209, 2, 214, 229)),
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              width: 0.8,
                                              color: Color(0xFF16A6CC),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                          hintText: 'Last name',
                                          hintStyle: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  165, 34, 34, 34)),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(35, 12, 32, 0),
                              child: Text(
                                "Email Address",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: const Color(0xFF888888),
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(35, 12, 32, 0),
                              child: SizedBox(
                                height: 45,
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        controller: emailController,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: const Color(0xffC8EDF9),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                width: 0.8,
                                                color: Color.fromARGB(
                                                    209, 2, 214, 229)),
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              width: 0.8,
                                              color: Color(0xFF16A6CC),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                          hintText: 'rentify@gmail.com',
                                          hintStyle: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  165, 34, 34, 34)),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(35, 0, 32, 0),
                                    child: Text(
                                      "Password",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: const Color(0xFF888888),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(35, 12, 32, 0),
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
                                                color: const Color.fromARGB(
                                                    165, 34, 34, 34),
                                              ),
                                              decoration: InputDecoration(
                                                filled: true,
                                                fillColor:
                                                    const Color(0xffC8EDF9),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide:
                                                      const BorderSide(
                                                    width: 0.8,
                                                    color: Color.fromARGB(
                                                        209, 2, 214, 229),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide:
                                                      const BorderSide(
                                                    width: 0.8,
                                                    color: Color(0xFF16A6CC),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                ),
                                                hintText:
                                                    'Enter your password',
                                                hintStyle: const TextStyle(
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
                            ),
                            SizedBox(height: 5),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(35, 12, 32, 0),
                                  child: Text(
                                    "Confirm Password",
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: const Color(0xFF888888),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(35, 12, 32, 0),
                                  child: SizedBox(
                                    height: 45,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            controller:
                                                confirmPasswordController,
                                            obscureText: true,
                                            style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              color: const Color.fromARGB(
                                                  165, 34, 34, 34),
                                            ),
                                            decoration: InputDecoration(
                                              filled: true,
                                              fillColor:
                                                  const Color(0xffC8EDF9),
                                              enabledBorder:
                                                  OutlineInputBorder(
                                                borderSide:
                                                    const BorderSide(
                                                  width: 0.8,
                                                  color: Color.fromARGB(
                                                      209, 2, 214, 229),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20.0),
                                              ),
                                              focusedBorder:
                                                  OutlineInputBorder(
                                                borderSide:
                                                    const BorderSide(
                                                  width: 0.8,
                                                  color: Color(0xFF16A6CC),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20.0),
                                              ),
                                              hintText:
                                                  'Enter your password',
                                              hintStyle: const TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color.fromARGB(
                                                      165, 34, 34, 34)),
                                            ),
                                            validator: (value) {
                                              if (value !=
                                                  passwordController.text) {
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
                            SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(32, 40, 31, 0),
                              child: MaterialButton(
                                onPressed: _register,
                                child:
                                    Image.asset('asset/login/sign up button.png'),
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
                                      TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) {
                                                return const LoginPage();
                                              },
                                            ),
                                          );
                                        },
                                        style: TextButton.styleFrom(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 2.0),
                                        ),
                                        child: Text(
                                          "Sign In",
                                          style: GoogleFonts.poppins(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                            color: const Color(0xff107793),
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
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
