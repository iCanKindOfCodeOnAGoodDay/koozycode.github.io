import 'package:flappy_taco/providers/premium_content_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/game_status_provider.dart';

class TrumpBulletWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.rotationZ(90),
      child: Container(
          height: 30.0,
          width: 30.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/trumpHeadxx1-22-23.gif')))),
    );
  }
}
