import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  Color? color;
  double? width, height;
  Decoration? decoration;
  Widget? child;
  String? serviceTitle,service1,service2,service3,service4;

  CustomContainer(
      {super.key,
      this.color,
      this.decoration,
      this.height,
      this.width,
      this.child, this.serviceTitle,
      this.service1,this.service2,this.service3,this.service4,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 0),
          child: child ??Column(mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment:CrossAxisAlignment.start ,
            children: [
              Row(
                children: [
                  Text(serviceTitle ?? ""),
                  Spacer(),
                  Text("View All"),
                  IconButton(onPressed: (){}, icon:Icon(Icons.arrow_forward_ios))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
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
                    Text(service1 ?? ''),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 60,
                      width: 50,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 143, 54, 54),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    Text(service2 ?? '',style: TextStyle(overflow: TextOverflow.clip),),

                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 60,
                      width: 50,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 138, 45, 45),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    Text(service3 ?? ''),
                  ],
                ),Column(
                  children: [
                    Container(
                      height: 60,
                      width: 50,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 187, 70, 70),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    Text(service4 ?? '',softWrap: true,
  overflow: TextOverflow.visible,maxLines: 2,),
                  ],
                )],
              )
            ],
          ),
        ),
        decoration: decoration ??
            BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: color ?? Colors.white),
        height: height ?? 160,
        width: width ?? MediaQuery.of(context).size.width,
      ),
    );
  }
}
