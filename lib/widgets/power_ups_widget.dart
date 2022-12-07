import 'package:flappy_taco/providers/game_status_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PowerUps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: context.watch<GameStatusProvider>().redGems,

          /// red gems
        ),
        Row(
          children: context.watch<GameStatusProvider>().extraLives,

          /// red gems
        ),
      ],
    );
  }
}
