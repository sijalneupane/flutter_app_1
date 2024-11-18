import 'package:flutter/material.dart';
import 'package:flutter_app_1/util/custom_container.dart';
import 'package:flutter_app_1/util/custom_icon.dart';

class KumariUi extends StatefulWidget {
  const KumariUi({super.key});

  @override
  State<KumariUi> createState() => _KumariUiState();
}

class _KumariUiState extends State<KumariUi> {
  bool visible = false;
  String accNo = "1234567899";
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
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.white, width: 2)),
                          child: CircleAvatar(
                            radius: 28,
                            backgroundColor: Colors.transparent,
                            child: Text(
                              "SN",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Good Morning",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text("Sijal",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500))
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CustomContainer(
                      height: 110,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Icon(Icons.badge),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("KUMARI SALARY SAVING")
                              ],
                            ),
                            Text(visible ? accNo : "XXXXXXXXXX"),
                            Row(
                              children: [
                                Text(visible ? "123 456" : "XXX XXX"),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        visible = !visible;
                                      });
                                    },
                                    icon: Icon(visible
                                        ? Icons.visibility_off
                                        : Icons.visibility))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    // CustomContainer(child: ,),
                    CustomContainer(
                      serviceTitle: "My accounts",
                      service1: "Accounts",
                      service2: "Statement",
                      service3: "Funds Transfer",
                      service4: "Send Money",
                    ),
                    CustomContainer(
                      serviceTitle: "Banking Services",
                      service1: "Cash Deposit",
                      service2: "Cheque Deposits",
                      service3: "",
                      service4: "",
                    ),
                    CustomContainer(
                      serviceTitle: "Banking Services",
                      service1: "",
                      service2: "",
                      service3: "",
                      service4: "",
                    ),
                    // CustomContainer(),
                    // CustomContainer(),
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
