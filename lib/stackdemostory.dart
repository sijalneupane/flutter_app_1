import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: const Column(
        children: [

       
       Stack(
         children: [
           CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage("https://tmssl.akamaized.net//images/foto/galerie/cristiano-ronaldo-al-nassr-2023-1690844161-112905.jpg?lm=1690844177"),
           ),
           Positioned(
            right: 0,
            bottom: 10,
            child: CircleAvatar(
              radius: 16,
              backgroundColor: Colors.black,
              child: Padding(
                padding: EdgeInsets.all(0.5),
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.add,size: 20,color: Colors.white,)),
              ),
            ))
         ],
       )


          // Stack(
          //   children: [
          //     Container(
          //       height: 500,
          //       width: 600,
          //       color: Colors.red,
          //     ),
          //     Positioned(
          //       bottom: 0,
          //       child: Container(
          //         height: 200,
          //         width: 200,
          //         color: Colors.blue,
          //       ),
          //     ),
          //     Container(
          //       height: 100,
          //       width: 100,
          //       color: Colors.green,
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
