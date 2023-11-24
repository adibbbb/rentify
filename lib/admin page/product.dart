import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentify/admin%20page/addproduct.dart';
import 'package:rentify/navbaradmin.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: const NavbarAdmin(),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(31, 100, 0, 0),
              child: Text(
                "Product",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF16A6CC),
                ),
              ),
            ), // END TITLE

            Padding(
              padding: const EdgeInsets.fromLTRB(55, 170, 55, 130),
              child: ListView(
                children: [
                  Container(
                    width: 280,
                    height: 146,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14.0),
                      border: Border.all(
                        color: const Color(0xFF16A6CC),
                        width: 1,
                      ),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.add,
                        size: 38,
                        color: Color(0xFF16A6CC),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const AddProduct();
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 17),
                  Container(
                    width: 280,
                    height: 146,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14.0),
                      border: Border.all(
                        color: const Color(0xFF16A6CC),
                        width: 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 14),
                              child: Text(
                                'All New Rush',
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 66),
                              child: Text(
                                'SUV',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff90A3BF),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 13,
                                top: 22,
                              ),
                              child: Image.asset(
                                'asset/admin/car.png',
                                width: 126,
                                height: 59,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 34, left: 20),
                                  child: Image.asset(
                                    'asset/admin/transmission.png',
                                    width: 14,
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 34,
                                  ),
                                  child: Text(
                                    'Manual',
                                    style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff90A3BF),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 9,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 0, left: 20),
                                  child: Image.asset(
                                    'asset/admin/seats.png',
                                    width: 14,
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 0,
                                  ),
                                  child: Text(
                                    '6 seats',
                                    style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff90A3BF),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 14, left: 20),
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Rp. ',
                                      style: GoogleFonts.poppins(
                                        fontSize: 11.0,
                                        fontWeight: FontWeight.w700,
                                        color: const Color(0xff32B768),
                                      ),
                                    ),
                                    TextSpan(
                                      text: '350.000/',
                                      style: GoogleFonts.poppins(
                                        fontSize: 11.0,
                                        fontWeight: FontWeight.w700,
                                        color: const Color(0xff32B768),
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' day',
                                      style: GoogleFonts.poppins(
                                        fontSize: 11.0,
                                        color: const Color(0xff90A3BF),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 115,
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: Image.asset(
                              'asset/admin/x.png',
                              width: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), //ENDS HERE BRUH

                  const SizedBox(height: 17),
                  Container(
                    width: 280,
                    height: 146,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14.0),
                      border: Border.all(
                        color: const Color(0xFF16A6CC),
                        width: 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 14),
                              child: Text(
                                'All New Rush',
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 66),
                              child: Text(
                                'SUV',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff90A3BF),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 13,
                                top: 22,
                              ),
                              child: Image.asset(
                                'asset/admin/car.png',
                                width: 126,
                                height: 59,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 34, left: 20),
                                  child: Image.asset(
                                    'asset/admin/transmission.png',
                                    width: 14,
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 34,
                                  ),
                                  child: Text(
                                    'Manual',
                                    style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff90A3BF),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 9,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 0, left: 20),
                                  child: Image.asset(
                                    'asset/admin/seats.png',
                                    width: 14,
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 0,
                                  ),
                                  child: Text(
                                    '6 seats',
                                    style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff90A3BF),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 14, left: 20),
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Rp. ',
                                      style: GoogleFonts.poppins(
                                        fontSize: 11.0,
                                        fontWeight: FontWeight.w700,
                                        color: const Color(0xff32B768),
                                      ),
                                    ),
                                    TextSpan(
                                      text: '350.000/',
                                      style: GoogleFonts.poppins(
                                        fontSize: 11.0,
                                        fontWeight: FontWeight.w700,
                                        color: const Color(0xff32B768),
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' day',
                                      style: GoogleFonts.poppins(
                                        fontSize: 11.0,
                                        color: const Color(0xff90A3BF),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 115,
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: Image.asset(
                              'asset/admin/x.png',
                              width: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), //ENDS HERE BRUH

                  const SizedBox(height: 17),
                  Container(
                    width: 280,
                    height: 146,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14.0),
                      border: Border.all(
                        color: const Color(0xFF16A6CC),
                        width: 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 14),
                              child: Text(
                                'All New Rush',
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 66),
                              child: Text(
                                'SUV',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff90A3BF),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 13,
                                top: 22,
                              ),
                              child: Image.asset(
                                'asset/admin/car.png',
                                width: 126,
                                height: 59,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 34, left: 20),
                                  child: Image.asset(
                                    'asset/admin/transmission.png',
                                    width: 14,
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 34,
                                  ),
                                  child: Text(
                                    'Manual',
                                    style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff90A3BF),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 9,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 0, left: 20),
                                  child: Image.asset(
                                    'asset/admin/seats.png',
                                    width: 14,
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 0,
                                  ),
                                  child: Text(
                                    '6 seats',
                                    style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff90A3BF),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 14, left: 20),
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Rp. ',
                                      style: GoogleFonts.poppins(
                                        fontSize: 11.0,
                                        fontWeight: FontWeight.w700,
                                        color: const Color(0xff32B768),
                                      ),
                                    ),
                                    TextSpan(
                                      text: '350.000/',
                                      style: GoogleFonts.poppins(
                                        fontSize: 11.0,
                                        fontWeight: FontWeight.w700,
                                        color: const Color(0xff32B768),
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' day',
                                      style: GoogleFonts.poppins(
                                        fontSize: 11.0,
                                        color: const Color(0xff90A3BF),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 115,
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: Image.asset(
                              'asset/admin/x.png',
                              width: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), //ENDS HERE BRUH

                  const SizedBox(height: 17),
                  Container(
                    width: 280,
                    height: 146,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14.0),
                      border: Border.all(
                        color: const Color(0xFF16A6CC),
                        width: 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 14),
                              child: Text(
                                'All New Rush',
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 66),
                              child: Text(
                                'SUV',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff90A3BF),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 13,
                                top: 22,
                              ),
                              child: Image.asset(
                                'asset/admin/car.png',
                                width: 126,
                                height: 59,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 34, left: 20),
                                  child: Image.asset(
                                    'asset/admin/transmission.png',
                                    width: 14,
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 34,
                                  ),
                                  child: Text(
                                    'Manual',
                                    style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff90A3BF),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 9,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 0, left: 20),
                                  child: Image.asset(
                                    'asset/admin/seats.png',
                                    width: 14,
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 0,
                                  ),
                                  child: Text(
                                    '6 seats',
                                    style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff90A3BF),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 14, left: 20),
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Rp. ',
                                      style: GoogleFonts.poppins(
                                        fontSize: 11.0,
                                        fontWeight: FontWeight.w700,
                                        color: const Color(0xff32B768),
                                      ),
                                    ),
                                    TextSpan(
                                      text: '350.000/',
                                      style: GoogleFonts.poppins(
                                        fontSize: 11.0,
                                        fontWeight: FontWeight.w700,
                                        color: const Color(0xff32B768),
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' day',
                                      style: GoogleFonts.poppins(
                                        fontSize: 11.0,
                                        color: const Color(0xff90A3BF),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 115,
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: Image.asset(
                              'asset/admin/x.png',
                              width: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), //ENDS HERE BRUH
                ],
              ),
            ),
          ],
        ));
  }
}
