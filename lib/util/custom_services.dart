import 'package:flutter/material.dart';

class CustomServices extends StatelessWidget {
  String? service;
  CustomServices({super.key,this.service});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child:Column(
                    children: [
                      Container(
                        height: 60,
                        width: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 158, 53, 53),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      SizedBox(height: 10,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width*0.3,
                        child: Text(service ?? '',
                        softWrap: true,
                        textAlign: TextAlign.center,
                        // overflow: TextOverflow.visible,
                        maxLines: 2,
                        style: TextStyle(fontSize: 1),),
                        ),
                    ],
                  ),
      ),
    );
  }
}