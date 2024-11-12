import 'package:flutter/material.dart';
import 'package:flutter_app_1/util/colors_const1.dart';
import 'package:flutter_app_1/util/string_const1.dart';

class CustomElevatedbutton1 extends StatelessWidget {
  Widget? child;
  double? height,width;
  void Function()? onPressed;
  CustomElevatedbutton1({super.key,required this.child,required this.onPressed,this.height,this.width});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: SizedBox(
        height: height ?? 50,
        width: width ?? MediaQuery.of(context).size.width * 0.9,
        child: ElevatedButton(
          onPressed: onPressed,
          child:child,
          style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            backgroundColor: primaryColor,foregroundColor: secondaryColor,
            textStyle: TextStyle(fontSize: 22)
            ),
        ),
      ),
    );
  }
}
