import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentify/button_nav_bar.dart';
import 'package:rentify/transaction%20page/active.dart';

class OrderDetaails extends StatefulWidget {
  const OrderDetaails({super.key});

  @override
  State<OrderDetaails> createState() => _OrderDetaailsState();
}

class _OrderDetaailsState extends State<OrderDetaails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff16A6CC),
        body: Stack(children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white, // Warna latar belakang
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60.0),
                  topRight: Radius.circular(60.0),
                ),
              ),
              height: 740,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(34, 50, 0, 0),
            child: Container(
              width: 32,
              height: 32,
              decoration: const BoxDecoration(
                color: Color(0xffC8EDF9),
                shape: BoxShape.circle, // Bentuk lingkaran
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                iconSize: 18,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 150, 90, 0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Order Details',
                  style: GoogleFonts.poppins(
                    color: const Color(0xff16A6CC),
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 8),
                Text('Please review the details below',
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(34, 240, 29, 0),
            child: Container(
              width: 327,
              height: 471,
              decoration: BoxDecoration(
                color: const Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color(0xffE5E5E5),
                  width: 2,
                ),
              ),
              child: Stack(children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(19, 16, 20, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Toyota Avanza',
                          style: GoogleFonts.poppins(
                              color: const Color(0xff16A6CC),
                              fontSize: 18,
                              fontWeight: FontWeight.w800)),
                      const Divider(
                        color: Color(0xffE5E5E5),
                        thickness: 2,
                      ),
                      const SizedBox(height: 5),
                      Text('Name',
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            color: const Color(0xff8D9091),
                            fontWeight: FontWeight.normal,
                          )),
                      const SizedBox(height: 5),
                      Text('Satria Syaiful Haq',
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            color: const Color(0xff3E3E3F),
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(height: 15),
                      Text('Payment Method',
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            color: const Color(0xff8D9091),
                            fontWeight: FontWeight.normal,
                          )),
                      const SizedBox(height: 5),
                      Text('Gopay',
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            color: const Color(0xff3E3E3F),
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(height: 15),
                      Text('Transaction ID',
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            color: const Color(0xff8D9091),
                            fontWeight: FontWeight.normal,
                          )),
                      const SizedBox(height: 5),
                      Text('2912GH2121',
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            color: const Color(0xff3E3E3F),
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(height: 15),
                      Text('Date',
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            color: const Color(0xff8D9091),
                            fontWeight: FontWeight.normal,
                          )),
                      const SizedBox(height: 5),
                      Text('19-12-2023',
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            color: const Color(0xff3E3E3F),
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(height: 15),
                      Text('Subtotal',
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            color: const Color(0xff8D9091),
                            fontWeight: FontWeight.normal,
                          )),
                      const SizedBox(height: 5),
                      Text('Rp. 250.000',
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            color: const Color(0xff3E3E3F),
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(height: 15),
                      Text('Voucher Discount',
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            color: const Color(0xff8D9091),
                            fontWeight: FontWeight.normal,
                          )),
                      const SizedBox(height: 5),
                      Text('-Rp.50.000',
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            color: const Color(0xff3E3E3F),
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(height: 15),
                      Text('Total',
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            color: const Color(0xff8D9091),
                            fontWeight: FontWeight.normal,
                          )),
                      const SizedBox(height: 5),
                      Text('Rp.200.000',
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            color: const Color(0xff3E3E3F),
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                )
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(34, 730, 29, 0),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const BottomNavBar();
                  }));
                },
                icon: Image.asset('asset/product/confirm.png')),
          )
        ]));
  }
}
