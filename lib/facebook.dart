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
          color: const Color.fromARGB(255, 255, 255, 255)
        ),),
        actions: [
          CircleAvatar(
            radius: 11,
            backgroundColor: Colors.white.withOpacity(0.9),
            child: Icon(Icons.add,
            size: 20,
            ),
          ),SizedBox(width: 15,),
        Icon(Icons.search ,color: Colors.white.withOpacity(0.9),),
        SizedBox(width: 15,),
        Icon(FontAwesomeIcons.facebookMessenger,
        color: Colors.white.withOpacity(0.9),
        size: 24,),
        SizedBox(width: 15,)
        ],
      ),
      body: const Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.home,color: Colors.white,),
              Icon(Icons.tv_rounded,color: Colors.white,),
              Icon(Icons.newspaper,color:Colors.white),
              Icon(Icons.groups_2_outlined,color: Colors.white,),
              Icon(Icons.notifications,color: Colors.white,),
              Icon(Icons.menu,color: Colors.white,)
            ],
          )
        ],
      ),
    );
  }
}