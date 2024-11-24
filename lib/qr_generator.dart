import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrGenerator extends StatefulWidget {
  const QrGenerator({super.key});

  @override
  State<QrGenerator> createState() => _QrGeneratorState();
}

class _QrGeneratorState extends State<QrGenerator> {
 
  qrData(){
     var data={
    "name": "sijal neupane",
    "gender": "male",
    "contact" :2343242
  };
  return json.encode(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          QrImageView(
            data: qrData(),
            version: QrVersions.auto,
            size: 200.0,
          ),
        ],
      )),
    );
  }
}
