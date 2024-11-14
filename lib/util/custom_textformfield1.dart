import 'package:flutter/material.dart';

class CustomTextformfield1 extends StatelessWidget {
  String? labelText;
  TextEditingController? controller;
  String? Function(String?)? validator;
  Widget? prefixIcon,suffixIcon;
  bool? obscureText;
  CustomTextformfield1({super.key,this.labelText,this.controller,this.validator,this.prefixIcon,this.suffixIcon,this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        autovalidateMode:AutovalidateMode.onUserInteraction,
        controller:controller,
        validator:validator,
        obscureText:obscureText ?? false,
        decoration: InputDecoration(
          
          labelText:labelText ,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          border:OutlineInputBorder(
            borderRadius: BorderRadius.circular(8)
          )
        ),
      ),
    );
  }
}