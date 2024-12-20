import 'package:flutter/material.dart';
import 'package:scan/scan.dart';

class MyqrScanner1 extends StatelessWidget {
  MyqrScanner1({super.key});
  ScanController controller = ScanController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ScanView(
          controller: controller,
          // custom scan area, if set to 1.0, will scan full area
          scanAreaScale: .6,
          scanLineColor: Colors.green.shade400,
          onCapture: (data) {
            // print(data);

            var snackBar = SnackBar(
              behavior: SnackBarBehavior.floating,
              // padding: EdgeInsets.only(bottom: 20,right: 20),
              content: Text(data),
              duration: Duration(milliseconds: 5000),
              clipBehavior: Clip.antiAlias,
            );
              // Find the ScaffoldMessenger in the widget tree and use it to show a SnackBar.
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
            // do something
            controller.resume();
          },
        ),
        Positioned(
            right: 0,
            top: 50,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.image,
                  color: Colors.white,
                ))),
        Positioned(
            right: 0,
            left: 0,
            top: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  "https://fonepay.com/images/logos/fonepay.png",
                  width: 100,
                  height: 40,
                ),
                Image.network(
                  "https://cdn.esewa.com.np/ui/images/esewa_og.png?111",
                  width: 100,
                  height: 40,
                )
              ],
            )),
        Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  width: 320,
                  child: Text(
                    "Scan to pay on Merchant Outlet",
                    softWrap: true,
                    maxLines: 2,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    textAlign: TextAlign.center,
                  )),
            ))
      ],
    );
  }
}
