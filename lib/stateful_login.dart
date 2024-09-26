import 'package:flutter/material.dart';
import 'package:flutter_app_1/custom_elevatedbutton.dart';
import 'package:flutter_app_1/custom_textformfield.dart';
import 'package:flutter_app_1/string_const.dart';

class StatefulLogin extends StatefulWidget {
  StatefulLogin({super.key});

  @override
  State<StatefulLogin> createState() => _StatefulLoginState();
}

class _StatefulLoginState extends State<StatefulLogin> {

  // final TextEditingController _emailController=TextEditingController();
  // final TextEditingController _passwordController=TextEditingController();
  // final TextEditingController _confirmPasswordController=TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.people_alt_outlined),
      ),
      body: Column(
        children: [
          CustomTextformfield(
            labelText: emailStr,
            keyboardType: TextInputType.emailAddress,
            onChanged: (p0) {
              // _emailController.text=p0;
            },
            validator:(p0){
              if(p0!.isEmpty){
                return emailValidatorStr;
              }return null;
            }
          ),
          CustomTextformfield(
            labelText: passwordStr,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            suffixIcon: Icon(Icons.visibility_off_rounded),
            onChanged: (p0) {
              // _passwordController.text=p0;
            },
            validator: (p0) {
              if(p0!.isEmpty){
                return passwordValidatorStr;
              }return null;
            },
          ),
          CustomTextformfield(
            labelText: passwordStr,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            suffixIcon: Icon(Icons.visibility_off_rounded),
            onChanged: (p0) {
              // _confirmPasswordController.text=p0;
            },
            validator: (p0) {
              if(p0!.isEmpty){
                return confirmPasswordValidatorStr;
              }return null;
            },
          ),
          CustomElevatedbutton(
            onPressed: () {
              
            },
            child: Text("Login"),
          )
        ],
      ),
    );
  }
}