import 'package:flutter/material.dart';
import 'package:flutter_app_1/futsal.dart';
import 'package:flutter_app_1/splash_screen.dart';
import 'package:flutter_app_1/stackdemostory.dart';
import 'package:flutter_app_1/trending_futsal_events.dart';

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
      theme: ThemeData(scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home:TrendingFutsalEvents()
      home:Test11()
    );
  }
}