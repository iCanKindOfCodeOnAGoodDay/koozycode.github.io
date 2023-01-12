import 'package:flutter/material.dart';

class IceCreamBullet extends StatelessWidget {
  String iceCreamPath;

  IceCreamBullet({required this.iceCreamPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('images/$iceCreamPath'))),
    );
  }
}
