import 'package:flutter/material.dart';
import 'package:flutter_app_1/util/custom_services.dart';

class CustomContainer2services extends StatelessWidget {
   Color? color;
  double? width, height;
  Decoration? decoration;
  Widget? child;
  String? serviceTitle,service1,service2,service3,service4;
   CustomContainer2services({super.key,
      this.color,
      this.decoration,
      this.height,
      this.width,
      this.child, this.serviceTitle,
      this.service1,this.service2,this.service3,this.service4});

  @override
  Widget build(BuildContext context) {
return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 0),
          child: child ??Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(serviceTitle ?? ""),
                  Spacer(),
                  Text("View All"),
                  IconButton(onPressed: (){}, icon:Icon(Icons.arrow_forward_ios,size: 16,))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomServices(service: service1,),
                  CustomServices(service: service2,),]
              )
            ],
          ),
        ),
        decoration: decoration ??
            BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: color ?? Colors.white),
        height: height ?? 180,
        width: width ?? MediaQuery.of(context).size.width,
      ),
    );
  }
}