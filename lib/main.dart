import 'package:flutter/material.dart';
// import 'package:rentify/home%20page/home_page.dart';
// import 'package:rentify/home%20page/order_form.dart';
// import 'package:rentify/home%20page/order_infomation.dart';
// import 'login page/forgetpass_email.dart';
// import 'package:rentify/home%20page/home_brand.dart';
// import 'package:rentify/home%20page/home_page.dart';
// import 'package:rentify/home%20page/home_seat.dart';
// import 'package:rentify/home%20page/home_transmission.dart';
// import 'login page/forgetpass_email.dart';
import 'profile page/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ProfilePage());
  }
}
