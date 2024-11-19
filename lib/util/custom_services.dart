import 'package:flutter/material.dart';

class CustomServices extends StatelessWidget {
  String? service;
  String imagePath;
  Color? color;
  CustomServices({super.key,required this.service,required this.imagePath,this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child:Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(imagePath,fit: BoxFit.contain,),
                        ),
                        height: 55,
                        width: 50,
                        decoration: BoxDecoration(
                          color:color,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      SizedBox(height: 10,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width*0.2,
                        child: Text(service ?? '',
                        // softWrap: true,
                        overflow: TextOverflow.clip, // Ensures no truncation
  textAlign: TextAlign.center,   
                        style: TextStyle(fontSize: 12,height: 1.2),
                        ),
                        ),
                    ],
                  ),
      ),
    );
  }
}