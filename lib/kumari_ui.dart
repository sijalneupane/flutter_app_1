import 'package:flutter/material.dart';
import 'package:flutter_app_1/util/custom_container.dart';
import 'package:flutter_app_1/util/custom_icon.dart';

class KumariUi extends StatelessWidget {
  const KumariUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: Color(0xff2596be),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            ClipRRect(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(50)),
                child: Image.asset("assets/images/kumari.jpg")),
            Padding(
              padding: const EdgeInsets.only(top: 5.0, right: 15, left: 15),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/kumari_logo.png",
                          height: 50,
                        ),
                        Spacer(),
                        CustomIcon(icon: Icons.search),
                        CustomIcon(icon: Icons.image),
                        CustomIcon(icon: Icons.notifications)
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,width: 2
                            )
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: Text("SN",style: TextStyle(color: Colors.white),),
                          ),
                        )
                      ],
                    ),
                    CustomContainer(color: Colors.transparent),
                    CustomContainer(
                      height: 110,
                    ),
                    CustomContainer(),
                    CustomContainer(),
                    CustomContainer(),
                    CustomContainer(),
                    CustomContainer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
