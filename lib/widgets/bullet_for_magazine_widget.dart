import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class IceCreamBulletForMagazine extends StatelessWidget {
  String iceCreamPath;

  IceCreamBulletForMagazine({required this.iceCreamPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 33,
      width: 33,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.contain, image: AssetImage('images/$iceCreamPath'))),
    );
  }
}
