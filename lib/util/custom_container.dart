import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  Color? color;
  double? width,height;
  Decoration? decoration;
  CustomContainer({super.key,this.color,this.decoration,this.height,this.width});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:15),
      child: Container(
        decoration:decoration ?? BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color ??Colors.white
        ),
              height:height ?? 140,
              width: width?? MediaQuery.of(context).size.width,
      ),
    );
  }
}