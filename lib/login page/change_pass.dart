import 'package:flutter/material.dart';

class ChangePassPage extends StatelessWidget {
  const ChangePassPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF16A6CC),
      body: Stack(
        children: [
          Image.asset(
            'asset/login/bgchange_pass.png',
            height: double.maxFinite,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
