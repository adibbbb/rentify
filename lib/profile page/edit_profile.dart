import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String filePath = '';

  // Function to handle file picking
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

  String selectedDate =
      "${DateTime.now().year.toString()}-${DateTime.now().month.toString().padLeft(2, '0')}-${DateTime.now().day.toString().padLeft(2, '0')}";

  void changeVariableOnUI(DateTime date) {
    setState(() => selectedDate = formatDateTime(date));
  }

  String formatDateTime(DateTime date) {
    return "${date.year.toString()}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'asset/profile/Profile.png',
            height: double.maxFinite,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 60.0,
            left: 27.0,
            child: Row(
              children: [
                Container(
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
                SizedBox(
                    width: 68), // Add some space between the button and text
                Text(
                  'Edit Profile',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          // BUTTON BACK & EDIT PROFILE TITLE

          Stack(
            children: <Widget>[
              Positioned(
                top: 100,
                left: 134,
                right: 134,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xff7ED8F1), // Warna border
                      width: 3.0, // Lebar border
                    ),
                  ),
                  padding: const EdgeInsets.all(3.0),
                  child: const CircleAvatar(
                    radius: 65.0, // Radius dari CircleAvatar
                    backgroundImage:
                        AssetImage('asset/profile/profile default.png'),
                  ),
                ),
              ),
              Positioned(
                top: 174,
                left: 232,
                right: 128,
                child: Transform.scale(
                  scale: 2,
                  child: IconButton(
                    icon: Image.asset('asset/profile/camera.png'),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
          // CIRCLE AVATAR END HERE
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 245, 0, 120),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(31, 0, 0, 0),
                  child: Text(
                    'First Name',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 12, 32, 0),
                  child: SizedBox(
                    height: 45,
                    child: Column(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xffC8EDF9),
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
                              hintText: 'first name',
                              hintStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(165, 34, 34, 34)),
                              prefixIcon:
                                  null, // Remove the default prefix icon
                              suffixIcon: Padding(
                                padding: const EdgeInsets.only(
                                    right:
                                        10.0), // Adjust the padding as needed
                                child: Image.asset(
                                  'asset/profile/edit.png',
                                  width: 14,
                                  height: 14,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ), // END TEXT FIELD EMAIL
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 12, 32, 0),
                  child: Text(
                    "Last Name",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: const Color(0xFF888888),
                    ),
                  ),
                ), //END last name JUDUL KECIL
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 12, 32, 0),
                  child: SizedBox(
                    height: 45,
                    child: Column(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xffC8EDF9),
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
                              hintText: 'last name',
                              hintStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(165, 34, 34, 34)),
                              prefixIcon:
                                  null, // Remove the default prefix icon
                              suffixIcon: Padding(
                                padding: const EdgeInsets.only(
                                    right:
                                        10.0), // Adjust the padding as needed
                                child: Image.asset(
                                  'asset/profile/edit.png',
                                  width: 14,
                                  height: 14,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ), // END TEXT LAST NAME
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 12, 32, 0),
                  child: Text(
                    "Email Address",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: const Color(0xFF888888),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 12, 32, 0),
                  child: SizedBox(
                    height: 45,
                    child: Column(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xffC8EDF9),
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
                              hintText: 'rentify@gmail.com',
                              hintStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(165, 34, 34, 34)),
                              prefixIcon:
                                  null, // Remove the default prefix icon
                              suffixIcon: Padding(
                                padding: const EdgeInsets.only(
                                    right:
                                        10.0), // Adjust the padding as needed
                                child: Image.asset(
                                  'asset/profile/edit.png',
                                  width: 14,
                                  height: 14,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ), // END TEXT FIELD EMAIL
                //
                //
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35, 0, 32, 0),
                        child: Text(
                          "Password",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: const Color(0xFF888888),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35, 12, 32, 0),
                        child: SizedBox(
                          height: 45,
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  controller: passwordController,
                                  // enabled: false,
                                  obscureText: true,
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color:
                                        const Color.fromARGB(165, 34, 34, 34),
                                  ),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: const Color(0xffC8EDF9),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        width: 0.8,
                                        color: Color.fromARGB(209, 2, 214, 229),
                                      ),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        width: 0.8,
                                        color: Color(0xFF16A6CC),
                                      ),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    hintText: 'Enter your password',
                                    hintStyle: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromARGB(165, 34, 34, 34)),
                                    prefixIcon:
                                        null, // Remove the default prefix icon
                                    suffixIcon: Padding(
                                      padding: const EdgeInsets.only(
                                          right:
                                              10.0), // Adjust the padding as needed
                                      child: Image.asset(
                                        'asset/profile/edit.png',
                                        width: 14,
                                        height: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ), //END PASSWORD
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(35, 12, 32, 0),
                      child: Text(
                        "Date of Birth",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: const Color(0xFF888888),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(35, 12, 32, 0),
                      child: SizedBox(
                        height: 45,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                width:
                                    135, // Sesuaikan dengan lebar yang Anda inginkan
                                height:
                                    45, // Sesuaikan dengan tinggi yang Anda inginkan
                                decoration: BoxDecoration(
                                  color: const Color(
                                      0xffC8EDF9), // Warna border radius
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color:
                                        const Color.fromARGB(209, 2, 214, 229),
                                    width: 0.8, // Lebar outline border
                                  ),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    DatePicker.showDatePicker(context,
                                        showTitleActions: true,
                                        minTime: DateTime.now(),
                                        onChanged: (date) {
                                      changeVariableOnUI(date);
                                    },
                                        onConfirm: (date) {},
                                        currentTime: DateTime.now(),
                                        locale: LocaleType.en);
                                  },
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        TextButton(
                                            onPressed: () {
                                              DatePicker.showDatePicker(context,
                                                  showTitleActions: true,
                                                  minTime: DateTime.now(),
                                                  onChanged: (date) {
                                                changeVariableOnUI(date);
                                              },
                                                  onConfirm: (date) {},
                                                  currentTime: DateTime.now(),
                                                  locale: LocaleType.en);
                                            },
                                            child: Text(
                                              textAlign: TextAlign.start,
                                              selectedDate,
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: const Color.fromARGB(
                                                    165, 34, 34, 34),
                                              ),
                                            )),
                                        const Icon(
                                          Icons.arrow_drop_down,
                                          color: Color(0xFF16A6CC),
                                          size: 20.0,
                                        ),
                                      ]),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ), // END PASSWORD
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(35, 12, 32, 0),
                      child: Text(
                        "Address",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: const Color(0xFF888888),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(35, 12, 32, 0),
                      child: SizedBox(
                        height: 45,
                        child: Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: const Color.fromARGB(165, 34, 34, 34),
                                ),
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: const Color(0xffC8EDF9),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      width: 0.8,
                                      color: Color.fromARGB(209, 2, 214, 229),
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      width: 0.8,
                                      color: Color(0xFF16A6CC),
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  hintText: 'Batam center 20 Ab 3',
                                  hintStyle: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(165, 34, 34, 34)),
                                  prefixIcon:
                                      null, // Remove the default prefix icon
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.only(
                                        right:
                                            10.0), // Adjust the padding as needed
                                    child: Image.asset(
                                      'asset/profile/edit.png',
                                      width: 14,
                                      height: 14,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ), // END PASSWORD
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(35, 12, 32, 0),
                      child: Text(
                        "Identification Number",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: const Color(0xFF888888),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(35, 12, 32, 0),
                      child: SizedBox(
                        height: 45,
                        child: Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: const Color.fromARGB(165, 34, 34, 34),
                                ),
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: const Color(0xffC8EDF9),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      width: 0.8,
                                      color: Color.fromARGB(209, 2, 214, 229),
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      width: 0.8,
                                      color: Color(0xFF16A6CC),
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  hintText: '907347328468964',
                                  hintStyle: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(165, 34, 34, 34)),
                                  prefixIcon:
                                      null, // Remove the default prefix icon
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.only(
                                        right:
                                            10.0), // Adjust the padding as needed
                                    child: Image.asset(
                                      'asset/profile/edit.png',
                                      width: 14,
                                      height: 14,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ), // END PASSWORD
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(35, 12, 32, 0),
                      child: Text(
                        "Upload Identification Address",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: const Color(0xFF888888),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(35, 12, 32, 0),
                      child: SizedBox(
                        height: 65,
                        width: 410,
                        child: Row(
                          children: [
                            Expanded(
                              child: IconButton(
                                icon: Container(
                                  width: 390, 
                                  height: 60, 
                                  child: Image.asset(
                                    'asset/profile/select file.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                onPressed: _pickFile,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ), // END PASSWORD
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(35, 710, 32, 0),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'asset/profile/save change.png',
                ), // Replace with the path to your image asset.
              ),
            ),
          ),
        ],
      ),
    );
  }
}
