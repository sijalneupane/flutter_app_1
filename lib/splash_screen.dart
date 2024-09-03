import 'package:flutter/material.dart';
import 'package:flutter_app_1/instagram.dart';

class Test11 extends StatefulWidget {
  const Test11({super.key});

  @override
  State<Test11> createState() => _Test11State();
}

class _Test11State extends State<Test11> {

  @override
  void initState() {
    
    Future.delayed(Duration(seconds: 2),(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Instagram()));
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Icon(Icons.person,color: Colors.green,)
        ],
        
      ),
    );
  }
}