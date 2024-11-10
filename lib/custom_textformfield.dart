import 'package:flutter/material.dart';

class CustomTextformfield extends StatelessWidget {
  String? labelText;
  Function(String)? onChanged;
  String? Function(String?)? validator;
  TextInputType? keyboardType;
  bool? obscureText;
  Widget? suffixIcon;
  CustomTextformfield(
      {super.key, this.labelText, this.onChanged, this.validator,this.keyboardType,this.obscureText,this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
      child: TextFormField(
        obscureText: obscureText ??= false,
        keyboardType: keyboardType ??=TextInputType.text,
        onChanged: onChanged,
        validator: validator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          suffixIcon: suffixIcon ??= null,
            labelText: labelText,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
      ),
    );
  }
}
