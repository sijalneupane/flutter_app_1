import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  IconData? icon;
  CustomIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Icon(icon,
      size: 25,
      color: Colors.white,),
    );
  }
}
