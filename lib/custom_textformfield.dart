import 'package:flutter/material.dart';

class CustomTextformfield extends StatelessWidget {
  String? labelText;
  Function(String)? onChanged;
  AutovalidateMode? autovalidateMode;
  CustomTextformfield({super.key,this.labelText,this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onChanged: onChanged,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5)
          )
        ),
      ),
    );
  }
}