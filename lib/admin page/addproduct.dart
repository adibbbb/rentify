import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  String? selectedBrand; // Define selectedBrand as a state variable
  String? selectedTransmission;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
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
              const SizedBox(height: 166),
              Padding(
                padding: const EdgeInsets.fromLTRB(36, 12, 32, 0),
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
                    ), //END SUB JUDUL 'BRAND'
                    const SizedBox(height: 10),
                    Container(
                      width: 327,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: const Color(0xffC8EDF9),
                      ),
                      child: DropdownButton<String>(
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
                          'Mitsubishi',
                          'Toyota',
                          'Daihatsu'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ), //END CONTAINER DROPDOWN

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
                      ),
                      child: DropdownButton<String>(
                        value: selectedTransmission,
                        onChanged: (String? newValue) {
                          // Update the selected value
                          setState(() {
                            selectedTransmission = newValue;
                          });
                        },
                        items: <String>[
                          'Manual',
                          'Matic',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ), //END CONTAINER DROPDOWN
                  ],
                ),
              ),
            ],
          ), // END TEXT FIELD EMAIL
        ],
      ),
    );
  }
}
