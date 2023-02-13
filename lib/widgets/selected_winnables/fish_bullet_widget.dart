import 'package:flappy_taco/providers/premium_content_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/game_status_provider.dart';

class FishBulletWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.rotationZ(90),
      child: Container(
        height: 40.0,
        width: 40.0,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    'images/${context.read<PremiumContentProvider>().listOfPathsToFloppyFishFileNames[context.watch<GameStatusProvider>().indexToFireDifferentFishBullets]}'))),
      ),
    );
  }
}
