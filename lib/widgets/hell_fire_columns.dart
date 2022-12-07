import 'package:flappy_taco/constants.dart';
import 'package:flappy_taco/widgets/cannon_fire.dart';
import 'package:flappy_taco/widgets/development_block_widget.dart';
import 'package:flutter/material.dart';

class HellFirePowerUpColumns extends StatelessWidget {
  int firePosition = -1;

  HellFirePowerUpColumns({required this.firePosition});

  @override
  Widget build(BuildContext context) {
    return firePosition <= 5
        ? Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // DevelopmentBlock(color: kBlankColor),
              DevelopmentBlock(color: kBlankColor),
              DevelopmentBlock(color: kBlankColor),
              DevelopmentBlock(color: kBlankColor),
              DevelopmentBlock(color: kBlankColor),
              DevelopmentBlock(color: kBlankColor),
              firePosition == 5 ? CannonFire() : kblankIcon,
              firePosition == 4 ? CannonFire() : kblankIcon,
              firePosition == 3 ? CannonFire() : kblankIcon,
              firePosition == 2 ? CannonFire() : kblankIcon,
              firePosition == 1 ? CannonFire() : kblankIcon,
              firePosition == 0 ? CannonFire() : kblankIcon,
            ],
          )

        /// upside down buildlings

        : Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // kblankIcon,
              firePosition == 11 ? CannonFire() : kblankIcon,
              firePosition == 10 ? CannonFire() : kblankIcon,
              firePosition == 9 ? CannonFire() : kblankIcon,
              firePosition == 8 ? CannonFire() : kblankIcon,
              firePosition == 7 ? CannonFire() : kblankIcon,
              firePosition == 6 ? CannonFire() : kblankIcon,
              DevelopmentBlock(color: kBlankColor),
              DevelopmentBlock(color: kBlankColor),
              DevelopmentBlock(color: kBlankColor),
              DevelopmentBlock(color: kBlankColor),
              DevelopmentBlock(color: kBlankColor),
              // DevelopmentBlock(color: kBlankColor),
            ],
          );
  }
}
