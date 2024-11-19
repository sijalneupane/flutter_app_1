import 'package:flutter/material.dart';
import 'package:flutter_app_1/color_const.dart';
import 'package:flutter_app_1/futsal.dart';
import 'package:flutter_app_1/login2.dart';
import 'package:flutter_app_1/send_money.dart';
import 'package:flutter_app_1/util/color_kumari.dart';
import 'package:flutter_app_1/util/custom_container.dart';
import 'package:flutter_app_1/util/custom_container_2services.dart';
import 'package:flutter_app_1/util/custom_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                child: Image.asset(
                  "assets/images/kumari.jpg",
                  width: MediaQuery.of(context).size.width,
                  height: 240,
                  fit: BoxFit.cover,
                )),
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
                      imagePath1: '',
                      imagePath2: '',
                      imagePath3: '',
                      imagePath4: '',
                      height: 110,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
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
                            Text(
                              visible ? accNo : "XXXXXXXXXX",
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              // Aligns children horizontally
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  visible ? "Rs. 123 456" : "Rs. XXX,XXX",
                                  style: TextStyle(fontSize: 18),
                                ),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        visible = !visible;
                                      });
                                    },
                                    icon: Icon(
                                      visible
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                      color: primaryColor,
                                      size: 20,
                                      // applyTextScaling: true,
                                    )),
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
                      service3: "Fundsss Transfer History",
                      service4: "Send Money",
                      imagePath1: 'assets/images/user.png',
                      imagePath2: 'assets/images/statements.png',
                      imagePath3: 'assets/images/income.png',
                      imagePath4:'assets/images/fund.png',
                      colorA:color4 ,
                      colorB: color5,
                      colorC: color6,
                      colorD: color2,
                    ),
                    CustomContainer(
                      serviceTitle: "Accounting Services",
                      service1: "Cash Deposit",
                      service2: "Cheque Deposits",
                      service3: "FD Loan Enhancement",
                      service4: "Loan Against FD",
                      imagePath1: 'assets/images/piggy-bank.png',
                      imagePath2: 'assets/images/check.png',
                      imagePath3: 'assets/images/loan.png',
                      imagePath4: 'assets/images/real-estate.png',
                      // color:Colors.red ,
                      colorA:color1 ,
                      colorB: color3,
                      colorC: color6,
                      colorD: color5,
                    ),
                    CustomContainer(
                      serviceTitle: "Banking Services",
                      service1: "FD request",
                      service2: "FD plus",
                      service3: "Recurring Fixed Deposit",
                      service4: "Balance Certificate",
                      imagePath1: 'assets/images/download.png',
                      imagePath2: 'assets/images/deposit.png',
                      imagePath3: 'assets/images/subscription-model.png',
                      imagePath4: 'assets/images/certificate.png',
                      colorA: color2,
                      colorB: color3,
                      colorC: color2,
                      colorD: color1,
                    ),
                    CustomContainer2services(
                      serviceTitle: "FundTransfer",
                      service1: "Same Bank",
                      service2: "Other Bank",
                      imagePath1: 'assets/images/mobile-banking.png',
                      imagePath2: 'assets/images/bank-transfer.png',
                    ),
                    CustomContainer(
                      serviceTitle: "Payments",
                      service1: "credit Card",
                      service2: "Mobile Topup",
                      service3: "Tansen Khanepani",
                      service4: "Wallet",
                      imagePath1: 'assets/images/atm-card.png',
                      imagePath2: 'assets/images/booking.png',
                      imagePath3: 'assets/images/tap.png',
                      imagePath4: 'assets/images/wallet-filled-money-tool.png',
                      colorA:color1 ,
                      colorB: color3,
                      colorC: color4,
                      colorD:color5 ,
                    ),
                    CustomContainer2services(
                      serviceTitle: "Remitance",
                      service1: "credit Card",
                      service2: "Mobile Topup",
                      imagePath1: 'assets/images/give-money (1).png',
                      imagePath2: 'assets/images/give-money.png',
                    )
                    // CustomContainer(service1: "Same Bank",),
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
