import 'package:flutter/material.dart';
import 'package:rentify/admin%20page/navbaradmin.dart';
import 'package:rentify/button_nav_bar.dart';
import 'package:rentify/firebase/firebase_options.dart';
import 'package:rentify/login%20page/forget_password.dart';
import 'package:rentify/login%20page/login.dart';
import 'package:rentify/login%20page/sign_up.dart';
import 'package:rentify/welcome.dart';
import 'splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        //home: NavbarAdmin());
        //home: const BottomNavBar());
        home: LauncherPage());
  }
}
