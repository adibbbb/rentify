import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentify/login%20page/login.dart';
import 'package:rentify/profile%20page/about_us.dart';
import 'package:rentify/profile%20page/account.dart';
import 'package:rentify/profile%20page/edit_profile.dart';
import 'package:rentify/profile%20page/settings.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Image.asset(
            'asset/profile/Profile.png',
            height: double.maxFinite,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
          // kelar

          Padding(
            padding: const EdgeInsets.fromLTRB(0, 75, 0, 0),
            child: Center(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white, // Warna border
                        width: 4.0, // Lebar border
                      ),
                    ),
                    child: const CircleAvatar(
                      radius: 65.0, // Radius dari CircleAvatar
                      backgroundImage:
                          AssetImage('asset/profile/profile default.png'),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Satria',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    'satriasyaiful004@gmail.com',
                    style: TextStyle(
                      fontSize: 10, // Ukuran teks email
                      color: Colors.black, // Warna teks email
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditProfile()),
                        );
                      },
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xff16A6CC))),
                      child: Text(
                        'Edit Profile',
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      )),
                  const SizedBox(
                    height: 37,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => (const EditProfile()),
                      ));
                    },
                    child: Container(
                      height: 52,
                      width: 320,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: const Color(0xff16A6CC).withOpacity(0.5),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 113, 113, 113)
                                  .withOpacity(0.3),
                              blurRadius: 4,
                              spreadRadius: 2,
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(26, 8, 22, 7),
                        child: Row(
                          children: [
                            Image.asset(
                              'asset/profile/orang.png',
                              height: 16,
                              width: 16,
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Account',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  'View and manage personal information',
                                  style: GoogleFonts.poppins(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                                width:
                                    45), // Spasi antara teks dan gambar asset
                            Image.asset(
                              'asset/profile/panah.png', // Ganti dengan path ke gambar asset Anda
                              height: 12, // Sesuaikan tinggi gambar asset
                              width: 12, // Sesuaikan lebar gambar asset
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // 222222222222222222
                  const SizedBox(
                    height: 13,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => (const Settingpage()),
                      ));
                    },
                    child: Container(
                      height: 52,
                      width: 320,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: const Color(0xff16A6CC).withOpacity(0.5),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 113, 113, 113)
                                  .withOpacity(0.3),
                              blurRadius: 4,
                              spreadRadius: 2,
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(23, 8, 22, 7),
                        child: Row(
                          children: [
                            Image.asset(
                              'asset/profile/setting.png',
                              height: 24,
                              width: 24,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Settings',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  'Customize app settings and account preferences',
                                  style: GoogleFonts.poppins(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                                width: 6), // Spasi antara teks dan gambar asset
                            Image.asset(
                              'asset/profile/panah.png', // Ganti dengan path ke gambar asset Anda
                              height: 12, // Sesuaikan tinggi gambar asset
                              width: 12, // Sesuaikan lebar gambar asset
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // 333333333333333333

                  const SizedBox(
                    height: 13,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const AboutUsPage(),
                      ));
                    },
                    child: Container(
                      height: 52,
                      width: 320,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: const Color(0xff16A6CC).withOpacity(0.5),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 113, 113, 113)
                                  .withOpacity(0.3),
                              blurRadius: 4,
                              spreadRadius: 2,
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(23, 8, 22, 7),
                        child: Row(
                          children: [
                            Image.asset(
                              'asset/profile/logo about us.png',
                              height: 20,
                              width: 20,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'About Us',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  'Information about the app and the rental company',
                                  style: GoogleFonts.poppins(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                                width: 3), // Spasi antara teks dan gambar asset
                            Image.asset(
                              'asset/profile/panah.png', // Ganti dengan path ke gambar asset Anda
                              height: 12, // Sesuaikan tinggi gambar asset
                              width: 12, // Sesuaikan lebar gambar asset
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // DONEEE

                  const SizedBox(
                    height: 13,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => (const LoginPage()),
                      ));
                    },
                    child: Container(
                      height: 52,
                      width: 320,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: const Color(0xff16A6CC).withOpacity(0.5),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 113, 113, 113)
                                  .withOpacity(0.3),
                              blurRadius: 4,
                              spreadRadius: 2,
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(23, 8, 22, 7),
                        child: Row(
                          children: [
                            Image.asset(
                              'asset/profile/sign out.png',
                              height: 24,
                              width: 24,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Sign Out',
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                                width:
                                    155), // Spasi antara teks dan gambar asset
                            Image.asset(
                              'asset/profile/panah.png', // Ganti dengan path ke gambar asset Anda
                              height: 12, // Sesuaikan tinggi gambar asset
                              width: 12, // Sesuaikan lebar gambar asset
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // DONEEE
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'asset/profile/lgogo.png',
                    height: 82,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
