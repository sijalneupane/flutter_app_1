import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Facebook extends StatelessWidget {
  Facebook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:Text("facebook",
        style:GoogleFonts.roboto(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: const Color.fromARGB(255, 36, 140, 245)
        ),),
        actions: [
          CircleAvatar(
            radius: 12,
            backgroundColor: Colors.white.withOpacity(0.8),
            child: Icon(Icons.add,
            size: 20,
            ),
          ),
        Icon(Icons.search),
        Icon(FontAwesomeIcons.facebookMessenger,
        size: 20,)
        ],
      ),
    );
  }
}