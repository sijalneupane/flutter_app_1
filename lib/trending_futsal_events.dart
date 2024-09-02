import 'package:flutter/material.dart';

class TrendingFutsalEvents extends StatelessWidget {
  TrendingFutsalEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 5,
          itemBuilder: (context,index){
          return Container(
            
          );
        },
      ),
            )
    );
  }
}