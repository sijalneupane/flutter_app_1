import 'package:flutter/material.dart';
import 'package:flutter_app_1/facebook.dart';
import 'package:local_auth/local_auth.dart';

class Finger1 extends StatefulWidget {
  const Finger1({super.key});

  @override
  State<Finger1> createState() => _Finger1();
}

class _Finger1 extends State<Finger1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          InkWell(
            onTap: () async {
              final LocalAuthentication auth = LocalAuthentication();
              // ···
              final bool canAuthenticateWithBiometrics =
                  await auth.canCheckBiometrics;
              final bool canAuthenticate = canAuthenticateWithBiometrics ||
                  await auth.isDeviceSupported();
              if (canAuthenticate) {
                try {
                  final bool didAuthenticate = await auth.authenticate(
                      localizedReason:
                          'Please authenticate to show account balance');
                  if (didAuthenticate) {
                   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Facebook()), (Route<dynamic> route) => false);
                  }
                } catch (e) {
                }
              }
            },
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Image.asset("assets/images/finger1.png"),
              radius: 50,
            ),
          ),CircularProgressIndicator()
        ],
      ),
    );
  }
}
