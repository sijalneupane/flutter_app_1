import 'package:flutter/material.dart';
import 'package:flutter_app_1/custom_textformfield.dart';

class Login2 extends StatelessWidget {
  Login2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              CustomTextformfield(labelText: "Name",onChanged: (p0) {
                
              },),
              CustomTextformfield(labelText: "Address",onChanged: (p0) {
                
              },)
            ],
          ),
        ),
      ),
    );
  }
}