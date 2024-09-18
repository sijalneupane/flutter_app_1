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
        title: Text(
          "facebook",
          style: GoogleFonts.roboto(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 255, 255, 255)),
        ),
        actions: [
          CircleAvatar(
            radius: 11,
            backgroundColor: Colors.white.withOpacity(0.9),
            child: Icon(
              Icons.add,
              size: 20,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.search,
            color: Colors.white.withOpacity(0.9),
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            FontAwesomeIcons.facebookMessenger,
            color: Colors.white.withOpacity(0.9),
            size: 24,
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.home,
                color: Colors.white,
                size: 30,
              ),
              Icon(
                Icons.tv_rounded,
                color: Colors.white,
                size: 30,
              ),
              Icon(Icons.group_outlined,
               color: Colors.white,
               size:30,),

              Icon(
                Icons.person_pin,
                color: Colors.white,
                size:30,
              ),
              Icon(
                FontAwesomeIcons.solidBell,
                color: Colors.white,
                size:30,
              ),
              Icon(
                Icons.menu,
                color: Colors.white,
                size:30,
              )
            ],
          ),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage("https://live.staticflickr.com/5252/5403292396_0804de9bcf_b.jpg"),
              ),
              TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    
                  )
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

