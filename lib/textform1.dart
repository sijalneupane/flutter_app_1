import 'package:flutter/material.dart';

class Form1 extends StatelessWidget {
  Form1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:const Text("Text Form Field Example") ,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.visibility),
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12)
                ),
                
                labelText: "Enter name",
                labelStyle: TextStyle(color: Colors.red)
              ),
            ),
          )
        ],
      ),
    );
  }
}