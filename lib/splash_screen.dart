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
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Instagram()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              'assets/images/instagram_logo.png',
              fit: BoxFit.cover,
              height: 100,
              width: 100,
            ),
          ),
          Positioned(
            bottom: 95,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(
                  "from",
                  style: TextStyle(
                      fontSize: 14,
                      color: const Color.fromARGB(255, 133, 133, 133)),
                ),
                Image.asset(
                  'assets/images/meta_inst.png',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 20,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
