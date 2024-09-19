import 'package:flutter/material.dart';
import 'package:flutter_app_1/facebook.dart';
import 'package:flutter_app_1/futsal.dart';
import 'package:flutter_app_1/login.dart';
import 'package:flutter_app_1/login1.dart';
import 'package:flutter_app_1/splash_screen.dart';
import 'package:flutter_app_1/textform1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Flutter Demo',
      theme: ThemeData(scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      // home:TrendingFutsalEvents()
      // home:FutsalBooking()
      home:Login1()
      // home: Login(),
    );
  }
}