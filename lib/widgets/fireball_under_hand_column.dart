import 'package:flappy_taco/providers/game_status_provider.dart';
import 'package:flappy_taco/widgets/cannon_ammunition_widget.dart';
import 'package:flappy_taco/widgets/coin_win_effect.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'package:provider/provider.dart';

class CoinsUnderHandColumn extends StatelessWidget {
  int position = 6;

  CoinsUnderHandColumn({required this.position});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        position == 11
            ? WinEffectForEachAmmoType()
            : Icon(
                Icons.circle,
                color: kBlankColor,
                size: 30.0,
              ),
        position == 10
            ? WinEffectForEachAmmoType()
            : Icon(
                Icons.circle,
                color: kBlankColor,
                size: 30.0,
              ),
        position == 9
            ? WinEffectForEachAmmoType()
            : Icon(
                Icons.circle,
                color: kBlankColor,
                size: 30.0,
              ),
        position == 8
            ? WinEffectForEachAmmoType()
            : Icon(
                Icons.circle,
                color: kBlankColor,
                size: 30.0,
              ),
        position == 7
            ? WinEffectForEachAmmoType()
            : Icon(
                Icons.circle,
                color: kBlankColor,
                size: 30.0,
              ),
        position == 6
            ? WinEffectForEachAmmoType()
            : Icon(
                Icons.circle,
                color: kBlankColor,
                size: 30.0,
              ),
        position == 5
            ? WinEffectForEachAmmoType()
            : Icon(
                Icons.circle,
                color: kBlankColor,
                size: 30.0,
              ),
        position == 4
            ? WinEffectForEachAmmoType()
            : Icon(
                Icons.circle,
                color: kBlankColor,
                size: 30.0,
              ),
        position == 3
            ? WinEffectForEachAmmoType()
            : Icon(
                Icons.circle,
                color: kBlankColor,
                size: 30.0,
              ),
        position == 2
            ? WinEffectForEachAmmoType()
            : Icon(
                Icons.circle,
                color: kBlankColor,
                size: 30.0,
              ),
        position == 1
            ? WinEffectForEachAmmoType()
            : Icon(
                Icons.circle,
                color: kBlankColor,
                size: 30.0,
              ),
        // position == 0
        //     ? context.watch<GameStatusProvider>().isClimbing == true
        //         ? kThing
        //         : kThingFalling
        //     : Icon(
        //         Icons.circle,
        //         color: position == 11 ? kBlankSquare : kBlankColor,
        //         size: 30.0,
        //       ),
      ],
    );
  }
}
