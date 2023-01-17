import 'package:flappy_taco/providers/premium_content_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShankShooterBullet extends StatelessWidget {
  // String shankPath = 'path';
  //
  // IceCreamBullet({required this.iceCreamPath});

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.rotationY(-180),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    'images/${context.watch<PremiumContentProvider>().pathToSelectedKnife}'))),
      ),
    );
  }
}
