import 'package:flutter/material.dart';

class PremiumGats extends StatelessWidget {
  String path;
  double height;
  double width;

  PremiumGats({required this.path, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 90.0,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fitHeight, image: AssetImage('images/$path'))),
    );
  }
}
