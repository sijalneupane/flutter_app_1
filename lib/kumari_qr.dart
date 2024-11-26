import 'package:flutter/material.dart';
import 'package:scan/scan.dart';

class KumariQr extends StatefulWidget {
  const KumariQr({super.key});

  @override
  State<KumariQr> createState() => _KumariQrState();
}

class _KumariQrState extends State<KumariQr> {
  ScanController controller = ScanController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  ScanView(
                    controller: controller,
                    // custom scan area, if set to 1.0, will scan full area
                    scanAreaScale: .6,
                    scanLineColor: Colors.green.shade400,
                    onCapture: (data) {
                      print(data);
                      controller.resume();
                      // do something
                    },
                  ),
                  Positioned(
                      width: MediaQuery.of(context).size.width,
                      top: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.network(
                            "https://cdn.esewa.com.np/ui/images/esewa_og.png?111",
                            height: 50,
                            width: 100,
                          ),
                          Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRldXcs83xKw_d5hALLUGLyBT09sCZNJ6vtIg&s",
                            height: 50,
                            width: 100,
                          )
                        ],
                      )),
                  Positioned(
                    right: 0,
                    left: 0,
                    bottom: 80,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text("Kumari Bank Ltd.",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30) ,)))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
