import 'package:flutter/material.dart';
import 'package:flutter_app_1/buttom_nav.dart';
import 'package:flutter_app_1/facebook.dart';
import 'package:flutter_app_1/futsal.dart';
import 'package:flutter_app_1/kumari_ui.dart';
import 'package:flutter_app_1/like.dart';
import 'package:flutter_app_1/login.dart';
import 'package:flutter_app_1/login1.dart';
import 'package:flutter_app_1/login2.dart';
import 'package:flutter_app_1/send_money.dart';
import 'package:flutter_app_1/signup1.dart';
import 'package:flutter_app_1/splash_screen.dart';
import 'package:flutter_app_1/student_form.dart';
import 'package:flutter_app_1/textform1.dart';
import 'package:flutter_app_1/util/custom_container_2services.dart';
import 'package:flutter_app_1/util/kumari_bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // scaffoldBackgroundColor: Colors.white,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
          useMaterial3: true,
        ),
        // home:TrendingFutsalEvents()
        // home:FutsalBooking()
        // home: Signup1()
        // home: Login1(),
        // home: Login2(),
        // home:Like(),
        // home: StudentForm(),
        // home: ButtomNav(),
        // home: CustomContainer2services(),
        // home: KumariUi(),
        home: KumariBottomNavbar(),
        // home: SendMoneyPage(),
        );
  }
}
