import 'package:flutter/material.dart';
import 'package:flutter_app_1/custom_textformfield.dart';
import 'package:flutter_app_1/util/colors_const1.dart';
import 'package:flutter_app_1/util/custom_elevatedbutton1.dart';
import 'package:flutter_app_1/util/custom_textformfield1.dart';
import 'package:flutter_app_1/util/string_const1.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StudentForm extends StatefulWidget {
  const StudentForm({super.key});

  @override
  State<StudentForm> createState() => _StudentFormState();
}

class _StudentFormState extends State<StudentForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool visible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(loginStr),
        elevation: 0,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            CustomTextformfield1(
              prefixIcon: Icon(Icons.person),
              labelText: nameStr,
              controller: nameController,
              validator: (p0) {
                if (p0!.isEmpty) {
                  return nameValidatorStr;
                }
                return null;
              },
            ),
            CustomTextformfield1(
              prefixIcon: Icon(FontAwesomeIcons.locationDot),
              labelText: addressStr,
              controller: addressController,
              validator: (p0) {
                if (p0!.isEmpty) {
                  return addressValidatorStr;
                }
                return null;
              },
            ),
            CustomTextformfield1(
              labelText: passwordStr,
              controller: passwordController,
              prefixIcon: Icon(Icons.lock),
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                    visible=!visible;  
                    });
                    
                  },
                  icon: Icon(visible?Icons.visibility:Icons.visibility_off)),
              obscureText: visible ? false : true,
              validator: (p0) {
                if (p0!.isEmpty) {
                  return passwordValidatorStr;
                }
                return null;
              },
            ),
            CustomElevatedbutton1(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, print the values
                  // print("Name is ${nameController.text}");
                  // print("Address is ${addressController.text}");
                  // print("Password is ${passwordController.text}");
                }
              },
              child: Text(submitStr),
            )
          ],
        ),
      ),
    );
  }
}
