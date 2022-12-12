import 'package:flappy_taco/constants.dart';
import 'package:flappy_taco/widgets/cannon_fire.dart';
import 'package:flappy_taco/widgets/coin_win_effect.dart';
import 'package:flappy_taco/widgets/development_block_widget.dart';
import 'package:flutter/material.dart';

class HellFireContactColumns extends StatelessWidget {
  int potentialContactPosition = -1;

  HellFireContactColumns({required this.potentialContactPosition});

  @override
  Widget build(BuildContext context) {
    return potentialContactPosition <= 5
        ? Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // DevelopmentBlock(color: kBlankColor),
              DevelopmentBlock(color: kBlankColor),
              DevelopmentBlock(color: kBlankColor),
              DevelopmentBlock(color: kBlankColor),
              DevelopmentBlock(color: kBlankColor),
              potentialContactPosition == 6
                  ? WinEffectForEachAmmoType()
                  : kblankIcon,
              potentialContactPosition == 5
                  ? WinEffectForEachAmmoType()
                  : kblankIcon,
              potentialContactPosition == 4
                  ? WinEffectForEachAmmoType()
                  : kblankIcon,
              potentialContactPosition == 3
                  ? WinEffectForEachAmmoType()
                  : kblankIcon,
              potentialContactPosition == 2
                  ? WinEffectForEachAmmoType()
                  : kblankIcon,
              potentialContactPosition == 1
                  ? WinEffectForEachAmmoType()
                  : kblankIcon,
              potentialContactPosition == 0
                  ? WinEffectForEachAmmoType()
                  : kblankIcon,
              // DevelopmentBlock(color: kBlankColor),
            ],
          )

        /// upside down buildlings

        : Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              kblankIcon,
              potentialContactPosition == 11
                  ? WinEffectForEachAmmoType()
                  : kblankIcon,
              potentialContactPosition == 10
                  ? WinEffectForEachAmmoType()
                  : kblankIcon,
              potentialContactPosition == 9
                  ? WinEffectForEachAmmoType()
                  : kblankIcon,
              potentialContactPosition == 8
                  ? WinEffectForEachAmmoType()
                  : kblankIcon,
              potentialContactPosition == 7
                  ? WinEffectForEachAmmoType()
                  : kblankIcon,
              potentialContactPosition == 6
                  ? WinEffectForEachAmmoType()
                  : kblankIcon,
              potentialContactPosition == 5
                  ? WinEffectForEachAmmoType()
                  : kblankIcon,
              potentialContactPosition == 4
                  ? WinEffectForEachAmmoType()
                  : kblankIcon,
              potentialContactPosition == 3
                  ? WinEffectForEachAmmoType()
                  : kblankIcon,
              // DevelopmentBlock(color: kBlankColor),
              DevelopmentBlock(color: kBlankColor),
            ],
          );
  }
}
