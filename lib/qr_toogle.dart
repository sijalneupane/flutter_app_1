import 'package:flutter/material.dart';
import 'package:flutter_app_1/myqr_generator1.dart';
import 'package:flutter_app_1/myqr_scanner1.dart';

class QrToogle extends StatefulWidget {
  const QrToogle({super.key});

  @override
  State<QrToogle> createState() => _QrToogleState();
}

class _QrToogleState extends State<QrToogle> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            // height: 200,
            // width: 200,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.blue, Colors.red])),
            child: SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Scan Or Share",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                  ToggleButtons(
                    constraints: BoxConstraints(
                      minWidth: MediaQuery.of(context).size.width *
                          0.44, // Width of each button
                      // minHeight: MediaQuery.of(context).size.width, // Height of each button
                    ),
                    color: Colors.white,
                    // disabledBorderColor:Colors.blue ,
                    borderColor: Colors.blue,
                    fillColor: const Color.fromARGB(255, 255, 255, 255),
                    borderWidth: 2,
                    selectedBorderColor: Colors.blue,
                    selectedColor: Colors.blue.shade800,
                    borderRadius: BorderRadius.circular(10),
                    isSelected: [selectedIndex == 0, selectedIndex == 1],
                    onPressed: (int index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        child: Text('Scan', style: TextStyle(fontSize: 18)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        child: Text('Share', style: TextStyle(fontSize: 18)),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                  Expanded(child:Container(
                    
                    width: MediaQuery.of(context).size.width,
                    child:  selectedIndex==0? MyqrScanner1():MyqrGenerator1(),
                  ))
                ],
              ),
            )),
          ),
        ],
      ),
    );
  }
}
