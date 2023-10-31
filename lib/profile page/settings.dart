import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Settingpage extends StatefulWidget {
  const Settingpage({super.key});

  @override
  State<Settingpage> createState() => _SettingpageState();
}

class _SettingpageState extends State<Settingpage> {
  bool _MessagesEnabled = true;
  bool _PushNotifEnabled = false;
  bool _PromotionsEnabled = true;
  bool _isChecked = true;
  bool _isIndonesia = false;

  void _ToggleCheck() {
    setState(() {
      _isChecked = !_isChecked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'asset/profile/AboutUs.png',
            height: double.maxFinite,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 60.0,
            left: 27.0,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF7ED8F1),
              ),
              child: Align(
                alignment: Alignment.center,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 86.0,
            right: 28.0,
            child: Container(
              width: 163,
              height: 42,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(139, 61, 61, 61)
                          .withOpacity(0.5), // Shadow color
                      spreadRadius: 2, // Spread radius
                      blurRadius: 4, // Blur radius
                      offset: Offset(0, 2), // Offset in the x and y directions
                    )
                  ]),
              child: Center(
                child: Text(
                  "Settings",
                  style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF16A6CC),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 200, 0, 0),
            child: Text(
              "Notifications",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: 233,
            left: 25,
            right: 31,
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // Mengatur switch ke kanan
              children: [
                Text(
                  "Messages",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  child: Switch(
                    value: _MessagesEnabled,
                    onChanged: (bool newValue) {
                      setState(() {
                        _MessagesEnabled = newValue;
                      });
                    },
                    activeColor: Color(0xFF16A6CC),
                    inactiveThumbColor: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 270, // Adjust the top position as needed
            left: 25,
            right: 31,
            child: Divider(
              color: Colors.grey,
            ),
          ), //MESAGGES
          Positioned(
            top: 301,
            left: 25,
            right: 31,
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // Mengatur switch ke kanan
              children: [
                Text(
                  "Push Notifications",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  child: Switch(
                    value: _PushNotifEnabled,
                    onChanged: (bool newValue) {
                      setState(() {
                        _PushNotifEnabled = newValue;
                      });
                    },
                    activeColor: Color(0xFF16A6CC),
                    inactiveThumbColor: Colors.grey,
                  ),
                ),
              ],
            ),
          ), //END PUSH
          Positioned(
            top: 338, // Adjust the top position as needed
            left: 25,
            right: 31,
            child: Divider(
              color: Colors.grey,
            ),
          ),
          Positioned(
            top: 369,
            left: 25,
            right: 31,
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // Mengatur switch ke kanan
              children: [
                Text(
                  "Promotions",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  child: Switch(
                    value: _PromotionsEnabled,
                    onChanged: (bool newValue) {
                      setState(() {
                        _PromotionsEnabled = newValue;
                      });
                    },
                    activeColor: Color(0xFF16A6CC),
                    inactiveThumbColor: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 406, // Adjust the top position as needed
            left: 25,
            right: 31,
            child: Divider(
              color: Colors.grey,
            ),
          ), //END PROMOTIONS
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 468, 0, 0),
            child: Text(
              "Language",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: 501,
            left: 25,
            right: 31,
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // Mengatur switch ke kanan
              children: [
                Text(
                  "English",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        _isChecked = !_isChecked;
                      });
                    },
                    child: Container(
                      width: 30.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            _isChecked ? Color(0xFF16A6CC) : Color(0xFFC8EDF9),
                        border: Border.all(
                          width: 1.0,
                          color: Color(0xFF16A6CC),
                        ),
                      ),
                      child: Center(
                        child: _isChecked
                            ? Icon(
                                Icons.check,
                                size: 17.0,
                                color: Colors.white,
                              )
                            : Container(),
                      ),
                    ),
                  ),
                  // Text('Checkbox value: $_isChecked'),
                ),
              ],
            ),
          ),
          Positioned(
            top: 535, // Adjust the top position as needed
            left: 25,
            right: 31,
            child: Divider(
              color: Colors.grey,
            ),
          ), //LANGUAGE

          Positioned(
            top: 569,
            left: 25,
            right: 31,
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // Mengatur switch ke kanan
              children: [
                Text(
                  "Indonesia",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        _isIndonesia = !_isIndonesia;
                      });
                    },
                    child: Container(
                      width: 30.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _isIndonesia
                            ? Color(0xFF16A6CC)
                            : Color(0xFFC8EDF9),
                        border: Border.all(
                          width: 1.0,
                          color: Color(0xFF16A6CC),
                        ),
                      ),
                      child: Center(
                        child: _isIndonesia
                            ? Icon(
                                Icons.check,
                                size: 17.0,
                                color: Colors.white,
                              )
                            : Container(),
                      ),
                    ),
                  ),
                  // Text('Checkbox value: $_isChecked'),
                ),
              ],
            ),
          ),
          Positioned(
            top: 604, // Adjust the top position as needed
            left: 25,
            right: 31,
            child: Divider(
              color: Colors.grey,
            ),
          ), //LANGUAGE
        ],
      ),
    );
  }
}
