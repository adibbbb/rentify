import 'package:flutter/material.dart';
import 'package:rentify/admin%20page/addproduct.dart';
import 'package:rentify/home%20page/order_form.dart';
import 'package:rentify/profile%20page/edit_profile.dart';


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
        home: OrderForm());
  }
}
