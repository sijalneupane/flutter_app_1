import 'package:flutter/material.dart';

class CustomTextformfield1 extends StatelessWidget {
  String? labelText;
  TextEditingController? controller;
  String? Function(String?)? validator;
  CustomTextformfield1({super.key,this.labelText,this.controller,this.validator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        autovalidateMode:AutovalidateMode.onUserInteraction,
        controller:controller,
        validator:validator,
        decoration: InputDecoration(
          labelText:labelText ,
          border:OutlineInputBorder(
            borderRadius: BorderRadius.circular(8)
          )
        ),
      ),
    );
  }
}