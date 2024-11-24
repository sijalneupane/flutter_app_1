import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class MyqrGenerator1 extends StatelessWidget {
  const MyqrGenerator1({super.key});
  qrData() {
    var data = {"name": "sijal neupane", "gender": "male", "contact": 2343242};
    return json.encode(data);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(6)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Primary"),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green.withOpacity(0.6),
                          foregroundColor: Colors.white,
                          shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("Normal Saving"), Text("01023120120421")],
                    ),
                    Icon(
                      Icons.share,
                      size: 25,
                      color: Colors.grey,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(6)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Colors.black)),
                    child: Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: QrImageView(
                              data:
                                  qrData(),
                              version: QrVersions.auto,
                              size: 160,
                              gapless: false,
                              embeddedImage: AssetImage(
                                  'assets/images/real-estate.png'),
                              embeddedImageStyle: QrEmbeddedImageStyle(
                                size: Size(40, 40),
                              ),
                            )),
                        Divider(
                          color: Colors.black,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.network(
                            "https://nchl.com.np/wp-content/uploads/2023/02/Rastriya-Banijya-Bank-Ltd..jpg",
                            height: MediaQuery.of(context).size.height * 0.075,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 76, 39, 176)
                                .withOpacity(0.3),
                            width: 1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.error_outline,color: const Color.fromARGB(
                                                255, 24, 26, 168)
                                            .withOpacity(0.8),),
                                SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.6,
                                    child: Text(
                                      "You will be sharing the following information",
                                      softWrap: true,
                                      style: TextStyle(
                                        color: const Color.fromARGB(
                                                255, 24, 26, 168)
                                            .withOpacity(0.8),
                                      ),
                                    ))
                              ],
                            ),
                            Text(
                              "1. Full Name",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 24, 26, 168)
                                    .withOpacity(0.8),
                              ),
                            ),
                            Text(
                              "2. Bank Name",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 24, 26, 168)
                                    .withOpacity(0.8),
                              ),
                            ),
                            Text(
                              "3. Account Number",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 24, 26, 168)
                                    .withOpacity(0.8),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
