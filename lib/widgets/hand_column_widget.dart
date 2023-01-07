import 'package:flappy_taco/providers/game_status_provider.dart';
import 'package:flappy_taco/widgets/selected_winnables/selected_gat.dart';
import 'package:flappy_taco/widgets/selected_winnables/selected_gat.dart';
import 'package:flappy_taco/widgets/selected_winnables/selected_gat.dart';
import 'package:flappy_taco/widgets/selected_winnables/selected_gat.dart';
import 'package:flappy_taco/widgets/selected_winnables/selected_gat.dart';
import 'package:flappy_taco/widgets/selected_winnables/selected_gat.dart';
import 'package:flappy_taco/widgets/selected_winnables/selected_gat.dart';
import 'package:flappy_taco/widgets/selected_winnables/selected_gat.dart';
import 'package:flappy_taco/widgets/selected_winnables/selected_gat.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'package:provider/provider.dart';

class HandColumn extends StatelessWidget {
  int position = 6;

  HandColumn({required this.position});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        position == 11
            ? context.watch<GameStatusProvider>().isClimbing == true
                ? SelectedGat()
                : context
                            .watch<GameStatusProvider>()
                            .triedFiringWhenOutOfAmmo ==
                        true
                    ? kThingDead
                    : context.watch<GameStatusProvider>().showADeadHand == true
                        ? kThingDead
                        : kThingFalling
            : Icon(
                Icons.circle,
                color: position == 11 ? kBlankSquare : kBlankColor,
                size: 30.0,
              ),
        position == 10
            ? context.watch<GameStatusProvider>().isClimbing == true
                ? SelectedGat()
                : context
                            .watch<GameStatusProvider>()
                            .triedFiringWhenOutOfAmmo ==
                        true
                    ? kThingDead
                    : context.watch<GameStatusProvider>().showADeadHand == true
                        ? kThingDead
                        : kThingFalling
            : Icon(
                Icons.circle,
                color: position == 11 ? kBlankSquare : kBlankColor,
                size: 30.0,
              ),
        position == 9
            ? context.watch<GameStatusProvider>().isClimbing == true
                ? SelectedGat()
                : context
                            .watch<GameStatusProvider>()
                            .triedFiringWhenOutOfAmmo ==
                        true
                    ? kThingDead
                    : context.watch<GameStatusProvider>().showADeadHand == true
                        ? kThingDead
                        : kThingFalling
            : Icon(
                Icons.circle,
                color: position == 11 ? kBlankSquare : kBlankColor,
                size: 30.0,
              ),
        position == 8
            ? context.watch<GameStatusProvider>().isClimbing == true
                ? SelectedGat()
                : context
                            .watch<GameStatusProvider>()
                            .triedFiringWhenOutOfAmmo ==
                        true
                    ? kThingDead
                    : context.watch<GameStatusProvider>().showADeadHand == true
                        ? kThingDead
                        : kThingFalling
            : Icon(
                Icons.circle,
                color: position == 11 ? kBlankSquare : kBlankColor,
                size: 30.0,
              ),
        position == 7
            ? context.watch<GameStatusProvider>().isClimbing == true
                ? SelectedGat()
                : context
                            .watch<GameStatusProvider>()
                            .triedFiringWhenOutOfAmmo ==
                        true
                    ? kThingDead
                    : context.watch<GameStatusProvider>().showADeadHand == true
                        ? kThingDead
                        : kThingFalling
            : Icon(
                Icons.circle,
                color: position == 11 ? kBlankSquare : kBlankColor,
                size: 30.0,
              ),
        position == 6
            ? context.watch<GameStatusProvider>().isClimbing == true
                ? SelectedGat()
                : context
                            .watch<GameStatusProvider>()
                            .triedFiringWhenOutOfAmmo ==
                        true
                    ? kThingDead
                    : context.watch<GameStatusProvider>().showADeadHand == true
                        ? kThingDead
                        : kThingFalling
            : Icon(
                Icons.circle,
                color: position == 11 ? kBlankSquare : kBlankColor,
                size: 30.0,
              ),
        position == 5
            ? context.watch<GameStatusProvider>().isClimbing == true
                ? SelectedGat()
                : context
                            .watch<GameStatusProvider>()
                            .triedFiringWhenOutOfAmmo ==
                        true
                    ? kThingDead
                    : context.watch<GameStatusProvider>().showADeadHand == true
                        ? kThingDead
                        : kThingFalling
            : Icon(
                Icons.circle,
                color: position == 11 ? kBlankSquare : kBlankColor,
                size: 30.0,
              ),
        position == 4
            ? context.watch<GameStatusProvider>().isClimbing == true
                ? SelectedGat()
                : context
                            .watch<GameStatusProvider>()
                            .triedFiringWhenOutOfAmmo ==
                        true
                    ? kThingDead
                    : context.watch<GameStatusProvider>().showADeadHand == true
                        ? kThingDead
                        : kThingFalling
            : Icon(
                Icons.circle,
                color: position == 11 ? kBlankSquare : kBlankColor,
                size: 30.0,
              ),
        position == 3
            ? context.watch<GameStatusProvider>().isClimbing == true
                ? SelectedGat()
                : context
                            .watch<GameStatusProvider>()
                            .triedFiringWhenOutOfAmmo ==
                        true
                    ? kThingDead
                    : context.watch<GameStatusProvider>().showADeadHand == true
                        ? kThingDead
                        : kThingFalling
            : Icon(
                Icons.circle,
                color: position == 11 ? kBlankSquare : kBlankColor,
                size: 30.0,
              ),
        position == 2
            ? context.watch<GameStatusProvider>().isClimbing == true
                ? SelectedGat()
                : context
                            .watch<GameStatusProvider>()
                            .triedFiringWhenOutOfAmmo ==
                        true
                    ? kThingDead
                    : context.watch<GameStatusProvider>().showADeadHand == true
                        ? kThingDead
                        : kThingFalling
            : Icon(
                Icons.circle,
                color: position == 11 ? kBlankSquare : kBlankColor,
                size: 30.0,
              ),
        position == 1
            ? context.watch<GameStatusProvider>().isClimbing == true
                ? SelectedGat()
                : context
                            .watch<GameStatusProvider>()
                            .triedFiringWhenOutOfAmmo ==
                        true
                    ? kThingDead
                    : context.watch<GameStatusProvider>().showADeadHand == true
                        ? kThingDead
                        : kThingFalling
            : Icon(
                Icons.circle,
                color: position == 11 ? kBlankSquare : kBlankColor,
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
