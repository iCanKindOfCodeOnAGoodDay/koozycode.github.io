import 'package:flappy_taco/constants.dart';
import 'package:flappy_taco/widgets/development_block_widget.dart';
import 'package:flutter/material.dart';

class BuildingWidget extends StatelessWidget {
  int buildingHeight = 1;

  int powerUpPosition = 0;

  BuildingWidget({required this.buildingHeight, required this.powerUpPosition});

  @override
  Widget build(BuildContext context) {
    return buildingHeight == 21
        ? Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // DevelopmentBlock(color: kBlankColor),
              // DevelopmentBlock(color: kBlankColor),
              buildingHeight >= 10 ? kGoldCoin : kblankIcon,
              buildingHeight >= 9 ? kGoldCoin : kblankIcon,
              buildingHeight >= 8 ? kGoldCoin : kblankIcon,
              buildingHeight >= 7 ? kGoldCoin : kblankIcon,
              buildingHeight >= 6 ? kGoldCoin : kblankIcon,
              buildingHeight >= 5 ? kGoldCoin : kblankIcon,
              buildingHeight >= 4 ? kGoldCoin : kblankIcon,
              buildingHeight >= 3 ? kGoldCoin : kblankIcon,
              buildingHeight >= 2 ? kGoldCoin : kblankIcon,
              buildingHeight >= 1 ? kGoldCoin : kblankIcon,
              buildingHeight >= 0 ? kGoldCoin : kblankIcon,
              // kWeb,
            ],
          )
        : powerUpPosition > 0
            ? Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  /// the hand can fall down to 1, and climb up to 10
                  ///                   kblankIcon,
                  powerUpPosition == 10 ? kRedGem : kblankIcon,
                  powerUpPosition == 9 ? kExtraLife : kblankIcon,
                  powerUpPosition == 8 ? kTimeBomb : kblankIcon,
                  powerUpPosition == 7 ? kKnifePowerUp : kblankIcon,
                  powerUpPosition == 6 ? kRedGem : kblankIcon,
                  powerUpPosition == 5 ? kSkullPatch : kblankIcon,
                  powerUpPosition == 4 ? kKnifePowerUp : kblankIcon,
                  powerUpPosition == 3 ? kFlameFace : kblankIcon,
                  powerUpPosition == 2 ? kFlameFace : kblankIcon,
                  powerUpPosition == 1 ? kNuke : kblankIcon,
                  // DevelopmentBlock(color: kBlankColor),
                ],
              )
            : buildingHeight <= 5
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // DevelopmentBlock(color: kBlankColor),
                      // DevelopmentBlock(color: kBlankColor),
                      DevelopmentBlock(color: kBlankColor),
                      DevelopmentBlock(color: kBlankColor),
                      DevelopmentBlock(color: kBlankColor),
                      DevelopmentBlock(color: kBlankColor),
                      DevelopmentBlock(color: kBlankColor),
                      buildingHeight >= 5 ? kSkullCoin : kblankIcon,
                      buildingHeight >= 4 ? kSkullCoin : kblankIcon,
                      buildingHeight >= 3 ? kSkullCoin : kblankIcon,
                      buildingHeight >= 2 ? kSkullCoin : kblankIcon,
                      buildingHeight >= 1 ? kSkullCoin : kblankIcon,
                      buildingHeight >= 0 ? kSkullCoin : kblankIcon,
                    ],
                  )

                /// upside down buildlings

                : buildingHeight == 20
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          // DevelopmentBlock(color: kBlankColor),
                          // DevelopmentBlock(color: kBlankColor),
                          buildingHeight >= 10 ? kNukeExplosion : kblankIcon,
                          buildingHeight >= 9 ? kNukeExplosion : kblankIcon,
                          buildingHeight >= 8 ? kNukeExplosion : kblankIcon,
                          buildingHeight >= 7 ? kNukeExplosion : kblankIcon,
                          buildingHeight >= 6 ? kNukeExplosion : kblankIcon,
                          buildingHeight >= 5 ? kNukeExplosion : kblankIcon,
                          buildingHeight >= 4 ? kNukeExplosion : kblankIcon,
                          buildingHeight >= 3 ? kNukeExplosion : kblankIcon,
                          buildingHeight >= 2 ? kNukeExplosion : kblankIcon,
                          buildingHeight >= 1 ? kNukeExplosion : kblankIcon,
                          buildingHeight >= 0 ? kNukeExplosion : kblankIcon,
                          // kWeb,
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          kSkullCoin,
                          kSkullCoin,
                          buildingHeight <= 10 ? kSkullCoin : kblankIcon,
                          buildingHeight <= 9 ? kSkullCoin : kblankIcon,
                          buildingHeight <= 8 ? kSkullCoin : kblankIcon,
                          buildingHeight <= 7 ? kSkullCoin : kblankIcon,
                          buildingHeight <= 6 ? kSkullCoin : kblankIcon,
                          DevelopmentBlock(color: kBlankColor),
                          DevelopmentBlock(color: kBlankColor),
                          DevelopmentBlock(color: kBlankColor),
                          DevelopmentBlock(color: kBlankColor),
                        ],
                      );
  }
}
