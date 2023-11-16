import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentify/home%20page/order_details.dart';

class OrderInformation extends StatefulWidget {
  const OrderInformation({super.key});

  @override
  State<OrderInformation> createState() => _OrderInformationState();
}

class _OrderInformationState extends State<OrderInformation> {
  int selectedPaymentOption = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(34, 50, 0, 0),
            child: Container(
              width: 32,
              height: 32,
              decoration: const BoxDecoration(
                color: Color(0xff7ED8F1),
                shape: BoxShape.circle, // Bentuk lingkaran
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                iconSize: 15,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(35, 100, 0, 0),
            child: Text(
              'Order Information',
              style: GoogleFonts.poppins(
                  fontSize: 18, fontWeight: FontWeight.w700),
            ),
          ),

          // ORDER DETAILS
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 135, 0, 0),
            child: Container(
              width: 344,
              height: 192,
              decoration: BoxDecoration(
                color: const Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(14),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(23, 19, 17, 19),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Order Details',
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 7),
                        const Divider(
                          height: 1,
                          thickness: 0.1,
                          color: Colors.black,
                        ),
                        const SizedBox(height: 14),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Type Car",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600)),
                                Text("Avanza New 2022",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Duration",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600)),
                                Text("2 Days",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Date",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600)),
                                Text("29 February 2023",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Divider(
                              height: 1,
                              thickness: 0.1,
                              color: Colors.black,
                            ),
                            const SizedBox(height: 14),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Transaction ID",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600)),
                                Text("2912GH2121",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          //PAYMENT OPTIONS
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 350, 0, 0),
            child: Container(
              width: 344,
              height: 146,
              decoration: BoxDecoration(
                color: const Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(14),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(19, 11, 0, 0),
                    child: Text(
                      'Payment Options',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(19, 0, 19, 0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'asset/transaction/dana.png',
                                  height: 23,
                                  width: 24,
                                ),
                                const SizedBox(width: 14),
                                Text(
                                  'Dana',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Radio(
                              value: 0,
                              groupValue: selectedPaymentOption,
                              onChanged: (value) {
                                // Handle radio button selection
                                setState(() {
                                  selectedPaymentOption = 0;
                                });
                              },
                              activeColor: Colors.blue,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'asset/transaction/gopay.png',
                                  height: 23,
                                  width: 24,
                                ),
                                const SizedBox(width: 14),
                                Text(
                                  'Gopay',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Radio(
                              value: 1,
                              groupValue: selectedPaymentOption,
                              onChanged: (value) {
                                // Handle radio button selection
                                setState(() {
                                  selectedPaymentOption = 1;
                                });
                              },
                              activeColor: Colors.blue,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // VOUCHER
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 520, 0, 0),
            child: Container(
              width: 344,
              height: 100,
              decoration: BoxDecoration(
                color: const Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(14),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(19, 16, 0, 0),
                    child: Text(
                      'Voucher',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(19, 0, 19, 0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Check For Discount',
                              style: GoogleFonts.poppins(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                            TextButton(
                              onPressed: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          BottomSheetVoucher()
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                              style: TextButton.styleFrom(
                                primary: const Color(0xff16A6CC),
                              ),
                              child: Text(
                                '1 available >',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // TOTAL PRICE TRANSACTION
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 630, 30, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Transaksi Awal
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Transaction',
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff000000),
                      ),
                    ),
                    const SizedBox(width: 140),
                    Text(
                      'Rent Car',
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ],
                ),
                // Transaksi Kedua
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Duration',
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff000000),
                      ),
                    ),
                    const SizedBox(width: 140),
                    Text(
                      '1 Day',
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ],
                ),
                // Transaksi Ketiga
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Summary',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff000000),
                      ),
                    ),
                    const SizedBox(width: 120),
                    Text(
                      'Rp. 350.000,00',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // BUTTON PAYMENT
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 730, 35, 0),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const OrderDetaails();
                  }));
                },
                icon: Image.asset('asset/product/payment.png')),
          )
        ],
      ),
    );
  }

  Stack BottomSheetVoucher() {
    return Stack(
      children: [
        Container(
          width: 405,
          height: 400,
          color: Colors.white,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(35, 35, 0, 0),
          child: Text(
            'Select Voucher',
            style:
                GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
            padding: const EdgeInsets.fromLTRB(35, 80, 29, 0),
            child: Container(
              width: 344,
              height: 115,
              decoration: BoxDecoration(
                color: const Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(14),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 3,
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(19, 17, 0, 0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Special Weekend Discount',
                        style: GoogleFonts.poppins(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Rp.50.000,00',
                        style: GoogleFonts.poppins(
                            fontSize: 22, fontWeight: FontWeight.w700),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '2 days remaining',
                            style: GoogleFonts.poppins(
                              color: Color(0xff16A6CC),
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          IconButton(
                            icon: Image.asset(
                              'asset/product/use.png',
                              width: 114,
                              height: 31,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ))
      ],
    );
  }
}
