import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:rentify/Models/mobil_data.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  //Form Input
  late String product;
  String? selectedBrand; // Define selectedBrand as a state variable
  String? selectedTransmission;
  String? selectedSeat;
  late String price;
  PlatformFile? file;
  late String fileName;

  Future<void> _pickFile() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles();

      if (result != null) {
        setState(() {
          // file = result.files.single.path ?? '';
          file = result.files.single;
          fileName = result.files.single.name;
          print(file);
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

  String? selectedValue = null;
  final _dropdownFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              "Add New Product",
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF16A6CC),
              ),
            ),
          ), //TITLE END
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 150),
              Padding(
                padding: const EdgeInsets.fromLTRB(36, 0, 32, 0),
                child: Text(
                  "Product",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: const Color(0xFF888888),
                  ),
                ),
              ), //END SUB JUDUL 'PRODUCT'
              Padding(
                padding: const EdgeInsets.fromLTRB(31, 12, 32, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 327,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: const Color(0xffC8EDF9),
                      ),
                      child: TextFormField(
                        onChanged: (value) => product = value,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.transparent,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 0.8,
                                color: Color.fromARGB(209, 2, 214, 229)),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 0.8,
                              color: Color(0xFF16A6CC),
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          hintText: 'Avanza',
                          hintStyle: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromARGB(165, 34, 34, 34)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 12, 32, 0),
                      child: Text(
                        "Brand",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: const Color(0xFF888888),
                        ),
                      ),
                    ), // END SUB JUDUL 'BRAND'
                    const SizedBox(height: 10),
                    Container(
                      key: _dropdownFormKey,
                      width: 327,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: const Color(0xffC8EDF9),
                        border: Border.all(
                          color:
                              const Color(0xFF7ED8F1), // Set the border color
                          width: 1.0, // Set the border width
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: DropdownButton<String>(
                          hint: const Text("Select Brand: "),
                          isExpanded: true,
                          underline: const SizedBox(),
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          value: selectedBrand,
                          onChanged: (String? newValue) {
                            // Update the selected value
                            setState(() {
                              selectedBrand = newValue;
                            });
                          },
                          items: <String>[
                            'Honda',
                            'Hyundai',
                            'Mazda',
                            'Toyota',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ), // END CONTAINER DROPDOWN

                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 12, 32, 0),
                      child: Text(
                        "Transmission",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: const Color(0xFF888888),
                        ),
                      ),
                    ), //END SUB JUDUL 'BRAND'
                    const SizedBox(height: 10),
                    Container(
                      width: 327,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: const Color(0xffC8EDF9),
                        border: Border.all(
                          color:
                              const Color(0xFF7ED8F1), // Set the border color
                          width: 1.0, // Set the border width
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal:
                                16.0), // Adjust the horizontal padding as needed
                        child: DropdownButton<String>(
                          hint: const Text("Select Transmission : "),
                          isExpanded: true,
                          underline: const SizedBox(),
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          value: selectedTransmission,
                          onChanged: (String? newValue) {
                            // Update the selected value
                            setState(() {
                              selectedTransmission = newValue;
                            });
                          },
                          items: <String>[
                            'Matic',
                            'Manual',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ), //END CONTAINER DROPDOWN

                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 12, 32, 0),
                      child: Text(
                        "Total Seat",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: const Color(0xFF888888),
                        ),
                      ),
                    ), //END SUB JUDUL 'BRAND'
                    const SizedBox(height: 10),
                    Container(
                      width: 327,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: const Color(0xffC8EDF9),
                        border: Border.all(
                          color:
                              const Color(0xFF7ED8F1), // Set the border color
                          width: 1.0, // Set the border width
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal:
                                16.0), // Adjust the horizontal padding as needed
                        child: DropdownButton<String>(
                          hint: const Text("Select Seat : "),
                          isExpanded: true,
                          underline: const SizedBox(),
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          value: selectedSeat,
                          onChanged: (String? newValue) {
                            // Update the selected value
                            setState(() {
                              selectedSeat = newValue;
                            });
                          },
                          items: <String>[
                            '1-4 Seats',
                            '1-8 Seats',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ), //END CONTAINER DROPDOWN

                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 12, 32, 0),
                      child: Text(
                        "Price",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: const Color(0xFF888888),
                        ),
                      ),
                    ), //END SUB JUDUL 'PRODUCT'
                    const SizedBox(height: 10),
                    Container(
                      width: 327,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: const Color(0xffC8EDF9),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        onChanged: (value) => price = value,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.transparent,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 0.8,
                                color: Color.fromARGB(209, 2, 214, 229)),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 0.8,
                              color: Color(0xFF16A6CC),
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          hintText: 'Rp. 300.000',
                          hintStyle: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromARGB(165, 34, 34, 34)),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 12, 32, 0),
                      child: Text(
                        "Upload Image Product",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: const Color(0xFF888888),
                        ),
                      ),
                    ), //END SUB JUDUL 'BRAND'

                    Padding(
                      padding: const EdgeInsets.fromLTRB(1, 2, 1, 0),
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
                    if (file != null) ...{
                      Padding(
                          padding: const EdgeInsets.fromLTRB(1, 2, 1, 0),
                          child: Text('Uploaded: $fileName')),
                    }
                  ],
                ),
              ),
            ],
          ), // END TEXT FIELD EMAIL
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(35, 600, 32, 0),
              child: IconButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => PromoPage()),
                  // );

                  Mobil(
                          gambar: '',
                          tahun: '',
                          detailgambar:
                              file ?? PlatformFile(name: 'NOT FOUND', size: 0),
                          tipemobil: '',
                          harga: price,
                          nama: product,
                          penumpang: '',
                          bensin: '',
                          cc: '',
                          transmisi: selectedTransmission ?? '',
                          seat: selectedSeat ?? '',
                          brand: selectedBrand ?? '')
                      .create();
                },
                icon: Image.asset(
                  'asset/admin/add product.png',
                ), // Replace with the path to your image asset.
              ),
            ),
          ),
        ],
      ),
    );
  }
}
