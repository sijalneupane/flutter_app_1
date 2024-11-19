import 'package:flutter/material.dart';
import 'package:flutter_app_1/util/custom_services.dart';

class CustomContainer extends StatelessWidget {
  Color? color;
  double? width, height;
  Decoration? decoration;
  Widget? child;
  String? serviceTitle, service1, service2, service3, service4;
  String imagePath1, imagePath2, imagePath3, imagePath4;
  Color? colorA, colorB, colorC, colorD;

  CustomContainer(
      {super.key,
      this.color,
      this.decoration,
      this.height,
      this.width,
      this.child,
      this.serviceTitle,
      this.service1,
      this.service2,
      this.service3,
      this.service4,
      required this.imagePath1,
      required this.imagePath2,
      required this.imagePath3,
      required this.imagePath4,
      this.colorA,
      this.colorB,
      this.colorC,
      this.colorD});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
          child: child ??
              Column(
                children: [
                  Row(
                    children: [
                      Text(serviceTitle ?? "",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      Spacer(),
                      Text("View All"),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ))
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomServices(
                        service: service1!,
                        imagePath: imagePath1,
                        color: colorA,
                      ),
                      CustomServices(
                        service: service2!,
                        imagePath: imagePath2,
                        color: colorB,
                      ),
                      CustomServices(
                        service: service3!,
                        imagePath: imagePath3,
                        color: colorC,
                      ),
                      CustomServices(
                        service: service4!,
                        imagePath: imagePath4,
                        color: colorD,
                      ),
                    ],
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
