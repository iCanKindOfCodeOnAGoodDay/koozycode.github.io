import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flappy_taco/providers/game_status_provider.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import 'combo_hits.dart';
import 'death_effect_column.dart';
import 'fireball_under_hand_column.dart';
import 'hand_column_widget.dart';

class GamePlayAreaWidget extends StatelessWidget {
  const GamePlayAreaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return

        ///GAME play areas
        Stack(
      children: [
        ///GAME play areas
        ///frame, except for when the image on top has transparent properties.
        Container(
          decoration: BoxDecoration(
            // color: Colors.black,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: context
                            .watch<GameStatusProvider>()
                            .showSkullBackground ==
                        true
                    ? AssetImage('images/horseThree.gif')
                    : context
                                .watch<GameStatusProvider>()
                                .shouldDisplayDoublePointsEffects ==
                            true
                        ? AssetImage('images/endlessColorHole.gif')
                        : context
                                    .watch<GameStatusProvider>()
                                    .shouldDisplayBloodSplatQuick ==
                                true
                            ? AssetImage('images/21SavageEnglish2.gif')
                            : context
                                        .watch<GameStatusProvider>()
                                        .shouldDisplayQuickScream ==
                                    true
                                ? AssetImage('images/21SavageEnglish2.gif')
                                : context.watch<GameStatusProvider>().crashed ==
                                        false
                                    ? AssetImage('images/black.png')
                                    : AssetImage(
                                        'images/endlessColorHole.gif')),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: context
                              .watch<GameStatusProvider>()
                              .showSkullBackground ==
                          true
                      ? AssetImage('images/blood2.gif')
                      // : AssetImage('images/fire.gif'),

                      : context
                                  .watch<GameStatusProvider>()
                                  .shouldDisplayQuickHorror ==
                              true
                          ? AssetImage('images/blood2.gif')
                          : context
                                      .watch<GameStatusProvider>()
                                      .shouldDisplayQuickScream ==
                                  true
                              ? AssetImage('images/blood2.gif')
                              : context
                                          .watch<GameStatusProvider>()
                                          .shouldDisplayBloodSplatQuick ==
                                      true
                                  ? AssetImage('images/blood2.gif')
                                  : context
                                              .watch<GameStatusProvider>()
                                              .shouldDisplayJustPickedUpCannon ==
                                          true
                                      ? AssetImage(
                                          'images/levelUpSword.gif',
                                        )
                                      : context
                                                  .watch<GameStatusProvider>()
                                                  .shouldDisplayExplosion2 ==
                                              true
                                          ? AssetImage(
                                              'images/explosionFlames.gif',
                                              // 'images/macGruberGunshots.gif',
                                            )
                                          : context
                                                      .watch<
                                                          GameStatusProvider>()
                                                      .shouldDisplayBandaidPickup ==
                                                  true
                                              ? AssetImage(
                                                  'images/swordSelfRespect.gif',
                                                )
                                              : context
                                                          .watch<
                                                              GameStatusProvider>()
                                                          .shouldDisplayExplosion1 ==
                                                      true
                                                  ? AssetImage(
                                                      'images/horseTwoLegs.gif',
                                                      // 'images/horseRidingPeople.gif',
                                                    )
                                                  : context
                                                              .watch<GameStatusProvider>()
                                                              .shouldDisplayQuickLifePickup ==
                                                          true
                                                      ? AssetImage(
                                                          'images/mileySnoopNicholasCage.gif',
                                                        )
                                                      : context.watch<GameStatusProvider>().crashed == false
                                                          ? AssetImage('images/fire.gif')
                                                          // ? AssetImage('images/blackWater.gif')

                                                          // blackWater.gif
                                                          : AssetImage('images/gameOver.GIF'),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                /// buildlings
                children: context.watch<GameStatusProvider>().buildings,
              ),
            ),
          ),
        ),
        Container(
          // color: Colors.red,
          child: DeadEffectColumn(

              /// taco position widget
              position: context.watch<GameStatusProvider>().handPosition),
        ),
        Container(
          // color: Colors.red,
          child: CoinsUnderHandColumn(

              /// taco position widget
              position: context.watch<GameStatusProvider>().handPosition),
        ),
        Container(
          // color: Colors.red,
          child: HandColumn(

              /// taco position widget
              position: context.watch<GameStatusProvider>().handPosition),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(context.watch<GameStatusProvider>().progressMessage,
                style: kMessageStyle)
          ],
        ),
        Row(
          children: context.watch<GameStatusProvider>().hellFireColumns,
        ),

        Row(
          children: context.watch<GameStatusProvider>().contactGrid,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ComboHitsMessage(),
          ],
        ),
      ],
    );
  }
}
