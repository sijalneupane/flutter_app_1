import 'package:flutter/material.dart';
import 'package:flutter_app_1/futsal.dart';
import 'package:flutter_app_1/kumari_ui.dart';
import 'package:flutter_app_1/login2.dart';
import 'package:flutter_app_1/send_money.dart';

class KumariBottomNavbar extends StatefulWidget {
  const KumariBottomNavbar({super.key});

  @override
  State<KumariBottomNavbar> createState() => _KumariBottomNavbarState();
}

class _KumariBottomNavbarState extends State<KumariBottomNavbar> {
  
List<Widget> widgetList = [
    KumariUi(),
    FutsalBooking(),
    SendMoneyPage(),
    Login2()
    
  ];
int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:widgetList[index] ,
       bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          onTap: (value) {
            setState(() {
              index=value;
            });
          },
          currentIndex: index,
          items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined,size: 30,), label: "Home",),
          BottomNavigationBarItem(
              icon: Icon(Icons.currency_rupee_rounded,size: 30,), label: "Payments"),
          BottomNavigationBarItem(
              icon: Icon(Icons.send_to_mobile_outlined,size: 30,), label: "Send Money"),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz,size: 30,), label: "More")
        ])
    );
  }
}