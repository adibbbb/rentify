import 'package:flutter/material.dart';
import 'package:rentify/home%20page/home_page.dart';

class DetailPage extends StatelessWidget {
  final KatalogMobil mobil;

  const DetailPage({
    Key? key,
    required this.mobil,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Latar belakang biru
          Positioned(
            width: 400,
            height: 184,
            child: Container(
              color: const Color(0xff16A6CC),
            ),
          ),
          // Tombol "Back" di kiri atas
          Positioned(
            top: 50,
            left: 33,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xff7ED8F1),
                shape: BoxShape.circle, // Bentuk lingkaran
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          // Gambar dengan BorderRadius
          Positioned(
            top: 100,
            left: 34,
            right: 34,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(20), // BorderRadius untuk gambar
                child: Image.asset(
                  mobil.gambar,
                  fit: BoxFit.fill,
                  width: 321,
                  height: 191,
                ),
              ),
            ),
          ),

          Positioned(
            top: 310,
            left: 36,
            right: 40,
            child: RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: '450.000',
                    style: TextStyle(
                      fontFamily: 'asset/fonts/Poppins-SemiBold.ttf',
                      fontWeight: FontWeight.w600,
                      color: Colors.green,
                      fontSize: 28,
                    ),
                  ),
                  WidgetSpan(
                    child: SizedBox(width: 5),
                  ),
                  TextSpan(
                    text: '/day',
                    style: TextStyle(
                      fontFamily: 'asset/fonts/Poppins-Regular.ttf',
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
