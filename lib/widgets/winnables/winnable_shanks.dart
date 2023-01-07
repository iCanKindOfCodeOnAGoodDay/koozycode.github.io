import 'package:flutter/material.dart';

class WinnableShankWidgets extends StatelessWidget {
  String path;

  WinnableShankWidgets({required this.path});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('images/$path'))),
    );
  }
}
