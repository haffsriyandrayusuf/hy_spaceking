import 'package:flutter/material.dart';
import 'package:hy_spaceking/home_space.dart';
import 'package:floating_navbar/floating_navbar.dart';
import 'package:floating_navbar/floating_navbar_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coworking Space',
      home: FloatingNavBar(
        resizeToAvoidBottomInset: false,
        color: Color(0xFFF6F7F8),
        selectedIconColor: Color(0xFF7F74EB),
        unselectedIconColor: Color(0xFF989BA1),
        items: [
          FloatingNavBarItem(
              iconData: Icons.home_filled, page: HomeSpace(), title: 'Home'),
          FloatingNavBarItem(
              iconData: Icons.mail_rounded,
              page: Text('Doctors'),
              title: 'Doctors'),
          FloatingNavBarItem(
              iconData: Icons.credit_card_rounded,
              page: Text('Reminders'),
              title: 'Reminders'),
          FloatingNavBarItem(
              iconData: Icons.favorite_rounded,
              page: Text('Records'),
              title: 'Records'),
        ],
        horizontalPadding: 24.0,
        hapticFeedback: false,
        showTitle: false,
      ),
    );
  }
}
