import 'package:flutter/material.dart';
import 'package:flutter_app_1/color_const.dart';
import 'package:flutter_app_1/custom_elevatedbutton.dart';
import 'package:flutter_app_1/custom_text.dart';
import 'package:flutter_app_1/custom_textformfield.dart';
import 'package:flutter_app_1/futsal.dart';
import 'package:flutter_app_1/string_const.dart';

class Login2 extends StatelessWidget {
  Login2({super.key});
  String? name,address,password;
  String? contactNumber;
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: apricot,
        leading: Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              CustomTextformfield(
                labelText: "Name",
                onChanged: (p0) {
                  name=p0;
                },
                validator: (p0) {
                  if(p0!.isEmpty){
                    return "Please enter name";
                  } return null;
                },
              ),
              CustomTextformfield(
                labelText: addressStr,
                onChanged: (p0) {
                  address:p0;
                },
                validator: (p0) {
                  if (p0!.isEmpty) {
                    return "Please enter address";
                  } return null;
                },
              ),
              CustomTextformfield(
                labelText: "Contact Number",
                onChanged: (p0) {
                  contactNumber=p0;
                },
                validator: (p0) {
                  if(p0!.isEmpty){
                    return "Please enter contact number";
                  } return null;
                },
              ),
              CustomTextformfield(
                labelText: "Password",
                onChanged: (p0) {
                  password=p0;
                },
                validator: (p0) {
                  if (p0!.isEmpty) {
                    return "Please enter password";
                  } return null;
                },
              ),
              CustomElevatedbutton(child: CustomText(data: "Login",),
                onPressed: () {
                  if(_formKey.currentState!.validate()){
                    print(emailController.text);
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FutsalBooking()));
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
