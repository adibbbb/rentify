import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentify/button_nav_bar.dart';
import 'package:rentify/login%20page/login.dart';
import 'package:rentify/profile%20page/about_us.dart';
import 'package:rentify/profile%20page/settings.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
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
            padding: EdgeInsets.fromLTRB(0, 75, 0, 0),
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
                    child: CircleAvatar(
                      radius: 65.0, // Radius dari CircleAvatar
                      backgroundImage:
                          AssetImage('asset/profile/profile default.png'),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Cinta Sang Diva',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'csangdiva@gmail.com',
                    style: TextStyle(
                      fontSize: 10, // Ukuran teks email
                      color: Colors.black, // Warna teks email
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
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
                  SizedBox(
                    height: 37,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 52,
                      width: 320,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(26, 8, 22, 7),
                        child: Row(
                          children: [
                            Image.asset(
                              'asset/profile/orang.png',
                              height: 16,
                              width: 16,
                            ),
                            SizedBox(
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
                            SizedBox(
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
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Color(0xff16A6CC).withOpacity(0.5),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 113, 113, 113)
                                  .withOpacity(0.3),
                              blurRadius: 4,
                              spreadRadius: 2,
                            )
                          ]),
                    ),
                  ),

                  // 222222222222222222
                  SizedBox(
                    height: 13,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => (Settingpage()),
                      ));
                    },
                    child: Container(
                      height: 52,
                      width: 320,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(23, 8, 22, 7),
                        child: Row(
                          children: [
                            Image.asset(
                              'asset/profile/setting.png',
                              height: 24,
                              width: 24,
                            ),
                            SizedBox(
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
                            SizedBox(
                                width: 6), // Spasi antara teks dan gambar asset
                            Image.asset(
                              'asset/profile/panah.png', // Ganti dengan path ke gambar asset Anda
                              height: 12, // Sesuaikan tinggi gambar asset
                              width: 12, // Sesuaikan lebar gambar asset
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Color(0xff16A6CC).withOpacity(0.5),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 113, 113, 113)
                                  .withOpacity(0.3),
                              blurRadius: 4,
                              spreadRadius: 2,
                            )
                          ]),
                    ),
                  ),

                  // 333333333333333333

                  SizedBox(
                    height: 13,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AboutUsPage(),
                      ));
                    },
                    child: Container(
                      height: 52,
                      width: 320,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(23, 8, 22, 7),
                        child: Row(
                          children: [
                            Image.asset(
                              'asset/profile/logo about us.png',
                              height: 20,
                              width: 20,
                            ),
                            SizedBox(
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
                            SizedBox(
                                width: 3), // Spasi antara teks dan gambar asset
                            Image.asset(
                              'asset/profile/panah.png', // Ganti dengan path ke gambar asset Anda
                              height: 12, // Sesuaikan tinggi gambar asset
                              width: 12, // Sesuaikan lebar gambar asset
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Color(0xff16A6CC).withOpacity(0.5),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 113, 113, 113)
                                  .withOpacity(0.3),
                              blurRadius: 4,
                              spreadRadius: 2,
                            )
                          ]),
                    ),
                  ),
                  // DONEEE

                  SizedBox(
                    height: 13,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => (LoginPage()),
                      ));
                    },
                    child: Container(
                      height: 52,
                      width: 320,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(23, 8, 22, 7),
                        child: Row(
                          children: [
                            Image.asset(
                              'asset/profile/sign out.png',
                              height: 24,
                              width: 24,
                            ),
                            SizedBox(
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
                            SizedBox(
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
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Color(0xff16A6CC).withOpacity(0.5),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 113, 113, 113)
                                  .withOpacity(0.3),
                              blurRadius: 4,
                              spreadRadius: 2,
                            )
                          ]),
                    ),
                  ),
                  // DONEEE
                  SizedBox(
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
