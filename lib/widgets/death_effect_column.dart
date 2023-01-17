import 'package:flappy_taco/providers/game_status_provider.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'package:provider/provider.dart';

class DeadEffectColumn extends StatelessWidget {
  int position = 6;

  DeadEffectColumn({required this.position});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        position == 11
            ? context.watch<GameStatusProvider>().crashed == true
                ? kDeadHand
                : kblankIcon
            : Icon(
                Icons.circle,
                color: position == 11 ? kBlankSquare : kBlankColor,
                size: 40.0,
              ),
        position == 10
            ? context.watch<GameStatusProvider>().crashed == true
                ? kDeadHand
                : kblankIcon
            : Icon(
                Icons.circle,
                color: position == 11 ? kBlankSquare : kBlankColor,
                size: 40.0,
              ),
        position == 9
            ? context.watch<GameStatusProvider>().crashed == true
                ? kDeadHand
                : kblankIcon
            : Icon(
                Icons.circle,
                color: position == 11 ? kBlankSquare : kBlankColor,
                size: 40.0,
              ),
        position == 8
            ? context.watch<GameStatusProvider>().crashed == true
                ? kDeadHand
                : kblankIcon
            : Icon(
                Icons.circle,
                color: position == 11 ? kBlankSquare : kBlankColor,
                size: 40.0,
              ),
        position == 7
            ? context.watch<GameStatusProvider>().crashed == true
                ? kDeadHand
                : kblankIcon
            : Icon(
                Icons.circle,
                color: position == 11 ? kBlankSquare : kBlankColor,
                size: 40.0,
              ),
        position == 6
            ? context.watch<GameStatusProvider>().crashed == true
                ? kDeadHand
                : kblankIcon
            : Icon(
                Icons.circle,
                color: position == 11 ? kBlankSquare : kBlankColor,
                size: 40.0,
              ),
        position == 5
            ? context.watch<GameStatusProvider>().crashed == true
                ? kDeadHand
                : kblankIcon
            : Icon(
                Icons.circle,
                color: position == 11 ? kBlankSquare : kBlankColor,
                size: 40.0,
              ),
        position == 4
            ? context.watch<GameStatusProvider>().crashed == true
                ? kDeadHand
                : kblankIcon
            : Icon(
                Icons.circle,
                color: position == 11 ? kBlankSquare : kBlankColor,
                size: 40.0,
              ),
        position == 3
            ? context.watch<GameStatusProvider>().crashed == true
                ? kDeadHand
                : kblankIcon
            : Icon(
                Icons.circle,
                color: position == 11 ? kBlankSquare : kBlankColor,
                size: 40.0,
              ),
        position == 2
            ? context.watch<GameStatusProvider>().crashed == true
                ? kDeadHand
                : kblankIcon
            : Icon(
                Icons.circle,
                color: position == 11 ? kBlankSquare : kBlankColor,
                size: 40.0,
              ),
        position == 1
            ? context.watch<GameStatusProvider>().crashed == true
                ? kDeadHand
                : kblankIcon
            : Icon(
                Icons.circle,
                color: position == 11 ? kBlankSquare : kBlankColor,
                size: 40.0,
              ),
        // position == 0
        //     ? context.watch<GameStatusProvider>().isClimbing == true
        //         ? kThing
        //         : kThingFalling
        //     : Icon(
        //         Icons.circle,
        //         color: position == 11 ? kBlankSquare : kBlankColor,
        //         size: 40.0,
        //       ),
      ],
    );
  }
}
