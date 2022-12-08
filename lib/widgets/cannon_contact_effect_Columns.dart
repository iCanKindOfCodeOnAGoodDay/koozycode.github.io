import 'package:flappy_taco/constants.dart';
import 'package:flappy_taco/widgets/cannon_fire.dart';
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
              potentialContactPosition == 6 ? kContactCoin : kblankIcon,
              potentialContactPosition == 5 ? kContactCoin : kblankIcon,
              potentialContactPosition == 4 ? kContactCoin : kblankIcon,
              potentialContactPosition == 3 ? kContactCoin : kblankIcon,
              potentialContactPosition == 2 ? kContactCoin : kblankIcon,
              potentialContactPosition == 1 ? kContactCoin : kblankIcon,
              potentialContactPosition == 0 ? kContactCoin : kblankIcon,
              // DevelopmentBlock(color: kBlankColor),
            ],
          )

        /// upside down buildlings

        : Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              kblankIcon,
              potentialContactPosition == 11 ? kContactCoin : kblankIcon,
              potentialContactPosition == 10 ? kContactCoin : kblankIcon,
              potentialContactPosition == 9 ? kContactCoin : kblankIcon,
              potentialContactPosition == 8 ? kContactCoin : kblankIcon,
              potentialContactPosition == 7 ? kContactCoin : kblankIcon,
              potentialContactPosition == 6 ? kContactCoin : kblankIcon,
              potentialContactPosition == 5 ? kContactCoin : kblankIcon,
              potentialContactPosition == 4 ? kContactCoin : kblankIcon,
              potentialContactPosition == 3 ? kContactCoin : kblankIcon,
              // DevelopmentBlock(color: kBlankColor),
              DevelopmentBlock(color: kBlankColor),
            ],
          );
  }
}
