import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/game_status_provider.dart';
import 'cannon_ammunition_widget.dart';

class BottomOfTheScreenImages extends StatelessWidget {
  const BottomOfTheScreenImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return context.watch<GameStatusProvider>().shouldShowCoinWinEffect == true
        ? Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 500.0,
                  ),
                  Expanded(
                    child: Container(
                      child: Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage('images/winnerLadyFistPump.gif'
                                        // 'images/blackRedYellowExplosion.gif',
                                        ))),
                      ),
                      height: 400.0,
                    ),
                  ),
                ],
              ),
            ],
          )
        : context.watch<GameStatusProvider>().shouldDisplayJustPickedUpCannon ==
                true
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 500.0,
                  ),
                  Container(height: 400.0, child: CannonAmmunition()),
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  context.watch<GameStatusProvider>().crashed == true
                      ? SizedBox(
                          height: 400.0,
                        )
                      : SizedBox(
                          height: 400.0,
                        ),
                  Expanded(
                    child: Container(
                      child: Container(
                        // height: 400.0,

                        decoration: BoxDecoration(
                            image: DecorationImage(
                          fit: BoxFit.cover,
                          image: context
                                      .watch<GameStatusProvider>()
                                      .shouldDisplayExplosion1 ==
                                  true
                              ? AssetImage(
                                  // 'images/horseRidingPeople.gif',
                                  'images/katyPerryRidingHorse.gif',
                                )
                              // ('images/katyPerryRidingHorse.gif')
                              : context
                                          .watch<GameStatusProvider>()
                                          .shouldDisplayExplosion2 ==
                                      true
                                  ? AssetImage(
                                      // 'images/pineappleExpressTwo.gif',
                                      'images/dezelOnAHorse.gif',
                                    )
                                  : context
                                              .watch<GameStatusProvider>()
                                              .showSkullBackground ==
                                          true
                                      ? AssetImage('images/lilWayneOne.gif')
                                      : context
                                                  .watch<GameStatusProvider>()
                                                  .shouldDisplayBloodSplatQuick ==
                                              true
                                          ? AssetImage(
                                              'images/screamingLady.gif')
                                          // : AssetImage(
                                          //     'images/brain1.gif',
                                          //   ),
                                          : context
                                                      .watch<
                                                          GameStatusProvider>()
                                                      .shouldDisplayQuickScream ==
                                                  true
                                              ? AssetImage(
                                                  'images/screamingLady.gif')
                                              : context
                                                          .watch<
                                                              GameStatusProvider>()
                                                          .shouldDisplayQuickHorror ==
                                                      true
                                                  //// quick game over before going back to blood
                                                  ? AssetImage(
                                                      // 'images/taylorSwiftCelebration.gif',
                                                      'images/snoopApproval.GIF',
                                                    )
                                                  : context
                                                              .watch<
                                                                  GameStatusProvider>()
                                                              .crashed ==
                                                          true
                                                      ? AssetImage(
                                                          'images/blood2.gif')
                                                      : context
                                                                  .watch<
                                                                      GameStatusProvider>()
                                                                  .shouldDisplayBandaidPickup ==
                                                              true
                                                          ? AssetImage(
                                                              'images/zendyaFive.GIF',
                                                            )
                                                          : context
                                                                      .watch<
                                                                          GameStatusProvider>()
                                                                      .shouldDisplayQuickLifePickup ==
                                                                  true
                                                              ? AssetImage(
                                                                  'images/mariahM.GIF',
                                                                )
                                                              : AssetImage(
                                                                  'images/transparentStaticLayer.gif',
                                                                ),
                        )),
                      ),
                    ),
                  ),
                ],
              );
  }
}
