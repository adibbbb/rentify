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
      appBar: AppBar(
        title: Text(mobil.nama),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Image.asset(mobil.gambar),
        ),
      ),
    );
  }
}
