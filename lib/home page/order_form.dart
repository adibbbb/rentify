import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentify/home%20page/order_infomation.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_datetime_picker/src/datetime_picker_theme.dart';

class OrderForm extends StatelessWidget {
  const OrderForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff16A6CC),
      body: Stack(
        children: [
          Container(
            child: Align(
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

          // ORDER DETAILS
          Padding(
            padding: const EdgeInsets.fromLTRB(36, 150, 0, 0),
            child: Text(
              'Order Details',
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(36, 170, 210, 0),
            child: Divider(
              color: Colors.black,
              thickness: 1.0,
            ),
          ),
          //PICK UP AND RETURN DATE
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(36, 190, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pick Up Date',
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                        color: const Color(0xff888888),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      width: 140, // Sesuaikan dengan lebar yang Anda inginkan
                      height: 25, // Sesuaikan dengan tinggi yang Anda inginkan
                      decoration: BoxDecoration(
                        color: const Color(0xffC8EDF9), // Warna border radius
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color:
                              const Color(0xff16A6CC), // Warna outline border
                          width: 1, // Lebar outline border
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: TextButton(
                              onPressed: () {
                                  DatePicker.showDatePicker(context,
                                    showTitleActions: true,
                                        minTime: DateTime(2018, 3, 5),
                                        maxTime: DateTime(2019, 6, 7), onChanged: (date) {
                                      print('change $date');
                                    }, onConfirm: (date) {
                                      print('confirm $date');
                                  }, currentTime: DateTime.now(), locale: LocaleType.zh);
                              },
                              child: const Text(
                                  'show date time picker (Chinese)',
                                  style: TextStyle(color: Colors.blue),
                              )),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Icon(
                              Icons.arrow_drop_down,
                              color: Color(0xff888888),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //RETURN DATE
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 190, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Return Date',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                        color: Color(0xff888888),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      width: 140, // Sesuaikan dengan lebar yang Anda inginkan
                      height: 25, // Sesuaikan dengan tinggi yang Anda inginkan
                      decoration: BoxDecoration(
                        color: const Color(0xffC8EDF9), // Warna border radius
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color:
                              const Color(0xff16A6CC), // Warna outline border
                          width: 1, // Lebar outline border
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              '04/09/2023', // Ganti dengan tanggal yang sesuai
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Icon(
                              Icons.arrow_drop_down,
                              color: Color(0xff888888),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          //PICK - UP TIME
          const Padding(
            padding: EdgeInsets.fromLTRB(36, 250, 0, 0),
            child: Text(
              'Pick-Up Time',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                height: 1.5,
                color: Color(0xff888888),
              ),
            ),
          ),

          // KONTEN PICK UP TIME
          Padding(
            padding: const EdgeInsets.fromLTRB(35, 270, 0, 0),
            child: Container(
              width: 324,
              height: 25,
              decoration: BoxDecoration(
                color: const Color(0xffC8EDF9),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: const Color(0xff16A6CC),
                  width: 1,
                ),
              ),
              child: const Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        '10:10 PM',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          height: 1.5,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // CONTACT DETAILS
          Padding(
            padding: const EdgeInsets.fromLTRB(36, 350, 0, 0),
            child: Text(
              'Contact Details',
              style: GoogleFonts.poppins(
                  fontSize: 15, fontWeight: FontWeight.w600),
            ),
          ),

          // ISI KONTEN CONTACT DETAILS
          Padding(
            padding: const EdgeInsets.fromLTRB(36, 390, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Full name as on ID card (KTP)',
                  style: GoogleFonts.poppins(
                    fontSize: 9,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Mochammad Adib Soedibyo',
                  style: GoogleFonts.poppins(
                    fontSize: 11,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const Divider(
                  thickness: 1,
                  color: Color(0xff888888),
                  endIndent: 36,
                ),
                Text(
                  'Mobile Number',
                  style: GoogleFonts.poppins(
                    fontSize: 9,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  '+62 852 6413 6452',
                  style: GoogleFonts.poppins(
                    fontSize: 11,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const Divider(
                  thickness: 1,
                  color: Color(0xff888888),
                  endIndent: 36,
                ),
                Text(
                  'Email Address',
                  style: GoogleFonts.poppins(
                    fontSize: 9,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'sudibyoadib1504@gmail.com',
                  style: GoogleFonts.poppins(
                    fontSize: 11,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const Divider(
                  thickness: 1,
                  color: Color(0xff888888),
                  endIndent: 36,
                ),
              ],
            ),
          ),

          // TOTAL PRICE
          Padding(
            padding: const EdgeInsets.fromLTRB(36, 600, 0, 0),
            child: Row(
              children: [
                const SizedBox(height: 5),
                Text(
                  'TOTAL PRICE',
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff16A6CC),
                  ),
                ),
                const SizedBox(width: 185),
                Text(
                  'Rp. 450.000',
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff16A6CC),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(36, 610, 0, 0),
            child: Divider(
              thickness: 1,
              color: Color(0xff16A6CC),
              endIndent: 36,
            ),
          ),

          //CHECKOUT
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 630, 0, 0),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const OrderInformation();
                  }));
                },
                icon: Image.asset('asset/product/checkout.png')),
          )
        ],
      ),
    );
  }
}
