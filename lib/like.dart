import 'package:flutter/material.dart';
import 'package:flutter_app_1/color_const.dart';
import 'package:flutter_app_1/string_const.dart';

class Like extends StatefulWidget {
  const Like({super.key});

  @override
  State<Like> createState() => _LikeState();
}

class _LikeState extends State<Like> {
  bool pressed = false;
  int like = 0;
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: periwinkle,
        title: Text(likeTitleStr),
        leading: Icon(
          Icons.arrow_back,
          color: primaryColor,
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      if (pressed == true) {
                        pressed = false;
                        like--;
                      } else {
                        pressed = true;
                        like++;
                      }
                      // pressed=!pressed;
                    });
                  },
                  icon: pressed == true
                      ? Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 40,
                        )
                      : Icon(
                          Icons.favorite_border_outlined,
                          size: 40,
                        )),
              Text("$like Like")
            ],
          ),
          TextFormField(
            obscureText: visible ? false : true,
            decoration: InputDecoration(
                labelText: passwordStr,
                suffixIcon: IconButton(
                    onPressed: () {
                     setState(() {
                        visible=!visible;
                     });
                    },
                    icon: visible == true
                        ? Icon(Icons.visibility)
                        : Icon(Icons.visibility_off))),
          )
        ],
      ),
    );
  }
}
