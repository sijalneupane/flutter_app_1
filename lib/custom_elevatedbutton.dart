import 'package:flutter/material.dart';

class CustomElevatedbutton extends StatelessWidget {
  Function()? onPressed;
  Widget? child;
  ButtonStyle? style;
  // double? height;
  CustomElevatedbutton({super.key,this.onPressed,this.child,this.style});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height:50,
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(onPressed:onPressed, child:child,style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.red,
          textStyle: TextStyle(fontSize: 24),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
        ),)),
    );
  }
}