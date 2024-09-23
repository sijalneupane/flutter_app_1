import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String? data;
  TextStyle? style;
  CustomText({super.key,this.data,this.style});
  

  @override
  Widget build(BuildContext context) {
    return Text(data!,style:style,);
  }
}