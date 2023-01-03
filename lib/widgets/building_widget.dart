import 'package:flappy_taco/constants.dart';
import 'package:flappy_taco/widgets/cannon_ammunition_next_pickup.dart';
import 'package:flappy_taco/widgets/cannon_ammunition_widget.dart';
import 'package:flappy_taco/widgets/development_block_widget.dart';
import 'package:flappy_taco/widgets/dynamic_barrier_coin.dart';
import 'package:flappy_taco/widgets/dynamic_barrier_coin.dart';
import 'package:flappy_taco/widgets/dynamic_barrier_coin.dart';
import 'package:flappy_taco/widgets/dynamic_barrier_coin.dart';
import 'package:flappy_taco/widgets/dynamic_barrier_coin.dart';
import 'package:flappy_taco/widgets/dynamic_barrier_coin.dart';
import 'package:flappy_taco/widgets/dynamic_barrier_coin.dart';
import 'package:flappy_taco/widgets/dynamic_barrier_coin.dart';
import 'package:flappy_taco/widgets/dynamic_barrier_coin.dart';
import 'package:flappy_taco/widgets/dynamic_barrier_coin.dart';
import 'package:flappy_taco/widgets/dynamic_barrier_coin.dart';
import 'package:flappy_taco/widgets/dynamic_barrier_coin.dart';
import 'package:flappy_taco/widgets/dynamic_barrier_coin.dart';
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
                  powerUpPosition == 6 ? kTimeIncrease : kblankIcon,
                  powerUpPosition == 5 ? kSkullPatch : kblankIcon,
                  powerUpPosition == 4 ? kKnifePowerUp : kblankIcon,
                  powerUpPosition == 3 ? AmmoPickup() : kblankIcon,
                  powerUpPosition == 2 ? AmmoPickup() : kblankIcon,
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
                      buildingHeight >= 5 ? DynamicCoin() : kblankIcon,
                      buildingHeight >= 4 ? DynamicCoin() : kblankIcon,
                      buildingHeight >= 3 ? DynamicCoin() : kblankIcon,
                      buildingHeight >= 2 ? DynamicCoin() : kblankIcon,
                      buildingHeight >= 1 ? DynamicCoin() : kblankIcon,
                      buildingHeight >= 0 ? DynamicCoin() : kblankIcon,
                    ],
                  )

                /// upside down buildlings

                : buildingHeight == 20
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
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          buildingHeight <= 12 ? DynamicCoin() : kblankIcon,
                          buildingHeight <= 11 ? DynamicCoin() : kblankIcon,
                          // DynamicCoin(),
                          // DynamicCoin(),
                          buildingHeight <= 10 ? DynamicCoin() : kblankIcon,
                          buildingHeight <= 9 ? DynamicCoin() : kblankIcon,
                          buildingHeight <= 8 ? DynamicCoin() : kblankIcon,
                          buildingHeight <= 7 ? DynamicCoin() : kblankIcon,
                          buildingHeight <= 6 ? DynamicCoin() : kblankIcon,
                          DevelopmentBlock(color: kBlankColor),
                          DevelopmentBlock(color: kBlankColor),
                          DevelopmentBlock(color: kBlankColor),
                          DevelopmentBlock(color: kBlankColor),
                        ],
                      );
  }
}
