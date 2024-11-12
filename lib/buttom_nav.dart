import 'package:flutter/material.dart';
import 'package:flutter_app_1/facebook.dart';
import 'package:flutter_app_1/futsal.dart';
import 'package:flutter_app_1/instagram.dart';
import 'package:flutter_app_1/student_form.dart';
import 'package:flutter_app_1/util/colors_const1.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtomNav extends StatefulWidget {
  const ButtomNav({super.key});

  @override
  State<ButtomNav> createState() => _ButtomNavState();
}

class _ButtomNavState extends State<ButtomNav> {
  List<Widget> widgetList = [
    Facebook(),
    StudentForm(),
    FutsalBooking(),
    Instagram()
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: widgetList[index],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: primaryColor,
          unselectedItemColor: Colors.grey,
          onTap: (value) {
            setState(() {
              index=value;
            });
          },
          currentIndex: index,
          items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.facebook), label: "Facebook"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.list), label: "Form"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.football), label: "Futsal Booking"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.instagram), label: "Instagram")
        ]));
  }
}
