import 'package:flutter/material.dart';
import 'package:rentify/admin%20page/product.dart';
import 'package:rentify/admin%20page/promo.dart';
import 'package:rentify/admin%20page/transaction.dart';

class NavbarAdmin extends StatefulWidget {
  const NavbarAdmin({super.key});

  @override
  State<NavbarAdmin> createState() => _NavbarAdminState();
}

class _NavbarAdminState extends State<NavbarAdmin> {
  int currentIndexx = 0;
  final screens = [
    ProductPage(),
    TransactionPage(),
    PromoPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 75,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(45.0),
            topRight: Radius.circular(45.0),
          ),
          color: Colors.transparent,
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomNavigationBar(
            backgroundColor: const Color(0xff16A6CC),
            selectedItemColor: Colors.white,
            showUnselectedLabels: false,
            unselectedItemColor: const Color(0xff000000),
            currentIndex: currentIndexx,
            onTap: (index) => setState(() => currentIndexx = index),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.car_rental_outlined),
                label: 'Products',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.payments),
                label: 'Transaction',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.discount),
                label: 'Promo',
              ),
            ],
          ),
        ));
  }
}
