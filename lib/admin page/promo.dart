import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:rentify/admin%20page/transaction.dart';
import 'package:rentify/navbaradmin.dart';

class PromoPage extends StatefulWidget {
  const PromoPage({Key? key});

  @override
  State<PromoPage> createState() => _PromoPageState();
}

class _PromoPageState extends State<PromoPage> {
  String filePath = '';
  Future<void> _pickFile() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles();

      if (result != null) {
        setState(() {
          filePath = result.files.single.path ?? '';
        });
      } else {
        // User canceled the file picking
        print('User canceled file picking');
      }
    } on PlatformException catch (e) {
      // Handle errors
      print('Error picking file: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: const NavbarAdmin(),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 40.0,
            left: 27.0,
            child: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF7ED8F1),
              ),
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
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(31, 100, 0, 0),
            child: Text(
              "Add New Promo",
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF16A6CC),
              ),
            ),
          ), // END TITLE

          Padding(
            padding: const EdgeInsets.fromLTRB(55, 170, 55, 287),
            child: ListView(
              children: [
                Stack(children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Container(
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
                    ),
                  ),
                  Positioned(
                    top: 14,
                    right: 5,
                    child: IconButton(
                        onPressed: () {}, // X kalo ngapus pencet ini
                        icon: Image.asset(
                          'asset/admin/x.png',
                          width: 14,
                        )),
                  ),
                ]),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(39, 570, 0, 0),
            child: Text(
              "Upload Image Promo",
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: const Color(0xFF888888),
              ),
            ),
          ), //END SUB JUDUL 'BRAND'

          Padding(
            padding: const EdgeInsets.fromLTRB(35, 590, 35, 0),
            child: SizedBox(
              child: Row(
                children: [
                  Expanded(
                    child: IconButton(
                      icon: Image.asset(
                        'asset/profile/select file.png',
                      ),
                      onPressed: _pickFile,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(35, 600, 32, 0),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TransactionPage()),
                  );
                },
                icon: Image.asset(
                  'asset/admin/add promo.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
