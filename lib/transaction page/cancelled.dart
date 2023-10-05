import 'package:flutter/material.dart';
import 'package:rentify/button_nav_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentify/transaction%20page/active.dart';
import 'package:rentify/transaction%20page/completed.dart';

class CancelledPage extends StatefulWidget {
  const CancelledPage({super.key});

  @override
  State<CancelledPage> createState() => _CancelledPageState();
}

class _CancelledPageState extends State<CancelledPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Image.asset(
            'asset/transaction/bg transaksi.png',
            height: double.maxFinite,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 15.0,
            left: 25.0,
            child: Align(
              alignment: Alignment.center,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            top: 90,
            left: 157,
            right: 157,
            child: Text(
              "My Order",
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 148, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => (ActivePage()),
                        ));
                      },
                      style: TextButton.styleFrom(),
                      child: Text(
                        'Active',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff16A6CC),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => (CompletedPage()),
                        ));
                      },
                      child: Text(
                        'Complete',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff16A6CC),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => (CancelledPage()),
                        ));
                      },
                      child: Text(
                        'Cancelled',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff16A6CC),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Color(0xFFC8EDF9),
                thickness: 1,
              ),
              SizedBox(
                height: 200,
              ),
              Text(
                "No orders have been canceled yet",
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              Text(
                "A list of canceled orders will  be displayed here",
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
