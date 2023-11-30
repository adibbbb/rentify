import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentify/transaction%20page/active.dart';
import 'package:rentify/transaction%20page/cancelled.dart';
import 'package:rentify/transaction%20page/completed.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({Key? key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'asset/transaction/bg transaksi.png',
              height: double.maxFinite,
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(25, 18, 0, 0),
            //   child: Container(
            //     width: 32,
            //     height: 32,
            //     decoration: const BoxDecoration(
            //       color: Color(0xffC8EDF9),
            //       shape: BoxShape.circle, // Bentuk lingkaran
            //     ),
            //     child: IconButton(
            //       icon: const Icon(
            //         Icons.arrow_back,
            //         color: Colors.white,
            //       ),
            //       iconSize: 18,
            //       onPressed: () {
            //         Navigator.pop(context);
            //       },
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.fromLTRB(157, 120, 157, 0),
              child: Text(
                "My Order",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 160),
              child: Column(
                children: [
                  TabBar(
                    tabs: [
                      Tab(text: 'Active'),
                      Tab(text: 'Completed'),
                      Tab(text: 'Cancelled'),
                    ],
                    labelColor: Color(0xff16A6CC),
                    unselectedLabelColor: Colors.grey,
                    indicatorWeight: 1,
                    indicatorColor: Color(0xff16A6CC),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        ActivePage(),
                        CompletedPage(),
                        CancelledPage(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
