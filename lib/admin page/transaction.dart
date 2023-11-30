import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentify/admin%20page/detailtransaction.dart';
import 'package:rentify/admin%20page/navbaradmin.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
        
          Padding(
            padding: const EdgeInsets.fromLTRB(31, 100, 0, 0),
            child: Text(
              "Transaction",
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF16A6CC),
              ),
            ),
          ), // END TITLE

          Padding(
            padding: const EdgeInsets.fromLTRB(33, 182, 10, 0),
            child: Text(
              "Need to confirm",
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF16A6CC),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
                top: 213, left: 33, bottom: 340, right: 32),
            child: ListView(
              children: [
                Container(
                  width: 314,
                  height: 92,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 2),
                      ),
                    ],
                    border: Border.all(
                      color: const Color(0xFF16A6CC),
                      width: 1,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 18, left: 25),
                                child: Text(
                                  'All New Terios',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Text(
                                  'Rent from 29 Aug - 30 Aug',
                                  style: GoogleFonts.poppins(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          // DIVIDER MASUK ROW
                          const SizedBox(width: 15),
                          Padding(
                            padding: const EdgeInsets.only(top: 22),
                            child: Image.asset(
                              'asset/admin/divider biru.png',
                              width: 4,
                              height: 24,
                            ),
                          ),

                          const SizedBox(width: 13),
                          Padding(
                            padding: const EdgeInsets.only(top: 29),
                            child: Text(
                              'user812389120',
                              style: GoogleFonts.poppins(
                                fontSize: 8,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 11, left: 25),
                            child: Text(
                              'Waiting for confirmation',
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.red,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 54,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: InkWell(
                              onTap: () {},
                              child: Image.asset(
                                'asset/admin/confirm.png',
                                width: 102,
                                height: 26,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ), // END CONTAINER

                const SizedBox(
                  height: 25,
                ),
                Container(
                  width: 314,
                  height: 92,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 2),
                      ),
                    ],
                    border: Border.all(
                      color: const Color(0xFF16A6CC),
                      width: 1,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 18, left: 25),
                                child: Text(
                                  'Agya',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Text(
                                  'Rent from 28 Jan - 29 Jan',
                                  style: GoogleFonts.poppins(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          // DIVIDER MASUK ROW
                          const SizedBox(width: 15),
                          Padding(
                            padding: const EdgeInsets.only(top: 22),
                            child: Image.asset(
                              'asset/admin/divider biru.png',
                              width: 4,
                              height: 24,
                            ),
                          ),

                          const SizedBox(width: 13),
                          Padding(
                            padding: const EdgeInsets.only(top: 29),
                            child: Text(
                              'user812389120',
                              style: GoogleFonts.poppins(
                                fontSize: 8,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 11, left: 25),
                            child: Text(
                              'Waiting for confirmation',
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.red,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 54,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DetailTransaction()),
                                );
                              },
                              child: Image.asset(
                                'asset/admin/confirm.png',
                                width: 102,
                                height: 26,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ), // END CONTAINER

                const SizedBox(
                  height: 25,
                ),
                Container(
                  width: 314,
                  height: 92,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 2),
                      ),
                    ],
                    border: Border.all(
                      color: const Color(0xFF16A6CC),
                      width: 1,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 18, left: 25),
                                child: Text(
                                  'Avanza',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Text(
                                  'Rent from 10 Okt - 11 Okt',
                                  style: GoogleFonts.poppins(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          // DIVIDER MASUK ROW
                          const SizedBox(width: 15),
                          Padding(
                            padding: const EdgeInsets.only(top: 22),
                            child: Image.asset(
                              'asset/admin/divider biru.png',
                              width: 4,
                              height: 24,
                            ),
                          ),

                          const SizedBox(width: 13),
                          Padding(
                            padding: const EdgeInsets.only(top: 29),
                            child: Text(
                              'user812389120',
                              style: GoogleFonts.poppins(
                                fontSize: 8,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 11, left: 25),
                            child: Text(
                              'Waiting for confirmation',
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.red,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 54,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: InkWell(
                              onTap: () {},
                              child: Image.asset(
                                'asset/admin/confirm.png',
                                width: 102,
                                height: 26,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ), // END CONTAINER
              ],
            ),
          ),

          //
          //
          //
          // ON PROGRESS COMES IN WHOAA~~
          Padding(
            padding: const EdgeInsets.fromLTRB(33, 455, 10, 0),
            child: Text(
              "On Progress",
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF16A6CC),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 486, left: 33, bottom: 50, right: 32),
            child: ListView(
              children: [
                // const SizedBox(height: 12),
                Container(
                  width: 314,
                  height: 66,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 2),
                      ),
                    ],
                    border: Border.all(
                      color: const Color(0xFF16A6CC),
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18, left: 25),
                            child: Text(
                              'All New Terios',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text(
                              'Rent from 29 Aug - 30 Aug',
                              style: GoogleFonts.poppins(
                                fontSize: 8,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // DIVIDER MASUK ROW
                      const SizedBox(width: 15),
                      Padding(
                        padding: const EdgeInsets.only(top: 22),
                        child: Image.asset(
                          'asset/admin/divider biru.png',
                          width: 4,
                          height: 24,
                        ),
                      ),

                      const SizedBox(width: 13),
                      Padding(
                        padding: const EdgeInsets.only(top: 29),
                        child: Text(
                          'adibb2123',
                          style: GoogleFonts.poppins(
                            fontSize: 8,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),

                      const SizedBox(width: 30),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Text(
                          'Ends Today',
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ), // END CONTAINER
                const SizedBox(height: 12),
                Container(
                  width: 314,
                  height: 66,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 2),
                      ),
                    ],
                    border: Border.all(
                      color: const Color(0xFF16A6CC),
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18, left: 25),
                            child: Text(
                              'All New Rush',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text(
                              'Rent from 29 Aug - 30 Aug',
                              style: GoogleFonts.poppins(
                                fontSize: 8,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // DIVIDER MASUK ROW
                      const SizedBox(width: 15),
                      Padding(
                        padding: const EdgeInsets.only(top: 22),
                        child: Image.asset(
                          'asset/admin/divider biru.png',
                          width: 4,
                          height: 24,
                        ),
                      ),

                      const SizedBox(width: 13),
                      Padding(
                        padding: const EdgeInsets.only(top: 29),
                        child: Text(
                          'adibb2123',
                          style: GoogleFonts.poppins(
                            fontSize: 8,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),

                      const SizedBox(width: 30),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Text(
                          'Ends in 1 day',
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ), // END CONTAINER

                const SizedBox(height: 12),
                Container(
                  width: 314,
                  height: 66,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 2),
                      ),
                    ],
                    border: Border.all(
                      color: const Color(0xFF16A6CC),
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18, left: 25),
                            child: Text(
                              'Agya 2023',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text(
                              'Rent from 29 Aug - 30 Aug',
                              style: GoogleFonts.poppins(
                                fontSize: 8,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // DIVIDER MASUK ROW
                      const SizedBox(width: 15),
                      Padding(
                        padding: const EdgeInsets.only(top: 22),
                        child: Image.asset(
                          'asset/admin/divider biru.png',
                          width: 4,
                          height: 24,
                        ),
                      ),

                      const SizedBox(width: 13),
                      Padding(
                        padding: const EdgeInsets.only(top: 29),
                        child: Text(
                          'adibb2123',
                          style: GoogleFonts.poppins(
                            fontSize: 8,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),

                      const SizedBox(width: 30),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Text(
                          'Ends in 2 day',
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ), // END CONTAINER
                const SizedBox(height: 12),
                Container(
                  width: 314,
                  height: 66,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 2),
                      ),
                    ],
                    border: Border.all(
                      color: const Color(0xFF16A6CC),
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18, left: 25),
                            child: Text(
                              'Agya 2023',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text(
                              'Rent from 29 Aug - 30 Aug',
                              style: GoogleFonts.poppins(
                                fontSize: 8,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // DIVIDER MASUK ROW
                      const SizedBox(width: 15),
                      Padding(
                        padding: const EdgeInsets.only(top: 22),
                        child: Image.asset(
                          'asset/admin/divider biru.png',
                          width: 4,
                          height: 24,
                        ),
                      ),

                      const SizedBox(width: 13),
                      Padding(
                        padding: const EdgeInsets.only(top: 29),
                        child: Text(
                          'adibb2123',
                          style: GoogleFonts.poppins(
                            fontSize: 8,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),

                      const SizedBox(width: 30),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Text(
                          'Ends in 2 day',
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ), // END CONTAINER
              ],
            ),
          )
        ],
      ),
    );
  }
}
