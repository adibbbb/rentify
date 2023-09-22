import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0), // Sesuaikan sesuai kebutuhan
          topRight: Radius.circular(40.0), // Sesuaikan sesuai kebutuhan
        ),
        color: Colors.transparent, // Atur warna latar belakang menjadi transparan
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0), // Sesuaikan sesuai kebutuhan
          topRight: Radius.circular(20.0), // Sesuaikan sesuai kebutuhan
        ),
        child: BottomNavigationBar(
          backgroundColor: Color(0xff16A6CC), // Atur warna latar belakang BottomNavigationBar
          selectedItemColor: Colors.white,
          unselectedItemColor: Color(0xff000000),
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.schedule),
              label: 'Transaksi',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profil',
            ),
          ],
        ),
      ),
    );
  }
}