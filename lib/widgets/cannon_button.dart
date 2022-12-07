import 'package:flutter/material.dart';

class CannonButton extends StatelessWidget {
  // final VoidCallback onButtonTap;
  final String filepath;

  CannonButton(
      {
      // required this.onButtonTap,
      required this.filepath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 50.0,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('images/$filepath'))),
    );
  }
}
