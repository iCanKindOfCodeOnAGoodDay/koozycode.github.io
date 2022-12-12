import 'dart:async';

import 'package:flappy_taco/constants.dart';
import 'package:flappy_taco/providers/game_status_provider.dart';
import 'package:flappy_taco/widgets/cannon_ammunition_widget.dart';
import 'package:flappy_taco/widgets/cannon_button.dart';
import 'package:flappy_taco/widgets/cannon_switch_widget.dart';
import 'package:flappy_taco/widgets/coin_win_effect.dart';
import 'package:flappy_taco/widgets/combo_hits.dart';
import 'package:flappy_taco/widgets/death_effect_column.dart';
import 'package:flappy_taco/widgets/fireball_under_hand_column.dart';
import 'package:flappy_taco/widgets/flashing_text_widget.dart';
import 'package:flappy_taco/widgets/power_up_widgets_lives_and.dart';
import 'package:flappy_taco/widgets/power_ups_widget.dart';
import 'package:flappy_taco/widgets/hand_column_widget.dart';
import 'package:flappy_taco/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class GamePlayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   title: Text(
      //     'flappy hand',
      //     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      //   ),
      // ),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          context.watch<GameStatusProvider>().crashed == true
              ? Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/redSkullMono2.gif'
                              // 'images/blackRedYellowExplosion.gif',
                              ))),
                  child: Container(
                    height: 700.0,
                    // width: 300.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/blood2v.gif'
                                // 'images/blackRedYellowExplosion.gif',
                                ))),
                  ),
                  height: 400.0,
                )
              // : Container(),
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 570.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('images/colorfulBlackWhite.gif'
                                  // 'images/blackRedYellowExplosion.gif',
                                  ))),
                    ),
                  ],
                ),
          context.watch<GameStatusProvider>().shouldShowCoinWinEffect == true
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 500.0,
                    ),
                    Container(
                      child: Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('images/fire.gif'
                                    // 'images/blackRedYellowExplosion.gif',
                                    ))),
                      ),
                      height: 400.0,
                    ),
                  ],
                )
              : context
                          .watch<GameStatusProvider>()
                          .shouldDisplayJustPickedUpCannon ==
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
                                height: 500.0,
                              ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage('images/redSkullMono2.gif')),
                            ),
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
                                              'images/deathStar150.gif')
                                          : context
                                                      .watch<
                                                          GameStatusProvider>()
                                                      .shouldDisplayExplosion2 ==
                                                  true
                                              ? AssetImage(
                                                  'images/blackRedYellowExplosion.gif')
                                              : context
                                                          .watch<
                                                              GameStatusProvider>()
                                                          .shouldDisplayBloodSplatQuick ==
                                                      true
                                                  ? AssetImage(
                                                      'images/blood2.gif')
                                                  : context
                                                              .watch<
                                                                  GameStatusProvider>()
                                                              .crashed ==
                                                          true
                                                      ? AssetImage(
                                                          'images/blood2v.gif')
                                                      : AssetImage(
                                                          'images/brain1.gif',
                                                        ))),
                            ),
                          ),
                        ),
                      ],
                    ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 60.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  context
                              .watch<GameStatusProvider>()
                              .shouldDisplayDoublePointsEffects ==
                          false
                      ? Stack(
                          children: [
                            Text(
                                context
                                    .watch<GameStatusProvider>()
                                    .score
                                    .toString(),
                                style: kScoreStyle),
                            context
                                        .watch<GameStatusProvider>()
                                        .shouldShowCoinWinEffect ==
                                    true
                                ? Column(
                                    children: [
                                      // SizedBox(height: 300.0),
                                      WinEffectForEachAmmoType(),
                                    ],
                                  )
                                : Container(),
                          ],
                        )
                      : FlashingText(
                          text: context
                              .watch<GameStatusProvider>()
                              .score
                              .toString()),
                  context.watch<GameStatusProvider>().crashed == true
                      ? Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'images/plasmaChargeForButton.gif')),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                                onTap: () {
                                  context.read<GameStatusProvider>().start();
                                  context.read<GameStatusProvider>().handFall();
                                  context
                                      .read<GameStatusProvider>()
                                      .resetGame();
                                },
                                child: Container(
                                  color: Colors.black,
                                  child: Text(
                                    'start',
                                    style: kButtonStyle,
                                  ),
                                )),
                          ),
                        )
                      : context.watch<GameStatusProvider>().isPaused == false
                          ? Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'images/plasmaChargeForButton.gif')),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    context
                                        .read<GameStatusProvider>()
                                        .pauseGame();
                                  },
                                  child: Container(
                                      color: Colors.black,
                                      child: Text(
                                        'pause',
                                        //// when user taps pause
                                        //// a button prompting the user to resume game should appear
                                        style: kButtonStyle,
                                      )),
                                ),
                              ),
                            )
                          : Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'images/plasmaChargeForButton.gif')),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    context
                                        .read<GameStatusProvider>()
                                        .resumeGame();
                                  },
                                  child: Container(
                                      color: Colors.green,
                                      child: Text(
                                        'play',
                                        //// when user taps pause
                                        //// a button prompting the user to resume game should appear
                                        style: kButtonStyle,
                                      )),
                                ),
                              ),
                            )
                ],
              ),
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: context
                                    .watch<GameStatusProvider>()
                                    .showSkullBackground ==
                                true
                            ? AssetImage('images/skelatonStrobe.gif')
                            : AssetImage('images/fire.gif'),

                        // context.watch<GameStatusProvider>().crashed ==
                        //                             false
                        //                         ? AssetImage('images/fire.gif')
                        //                         // ? AssetImage('images/blackWater.gif')
                        //
                        //                         // blackWater.gif
                        //                         : AssetImage('images/skullStatic.gif'),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      /// buildlings
                      children: context.watch<GameStatusProvider>().buildings,
                    ),
                  ),
                  Container(
                    // color: Colors.red,
                    child: DeadEffectColumn(

                        /// taco position widget
                        position:
                            context.watch<GameStatusProvider>().handPosition),
                  ),
                  Container(
                    // color: Colors.red,
                    child: CoinsUnderHandColumn(

                        /// taco position widget
                        position:
                            context.watch<GameStatusProvider>().handPosition),
                  ),
                  Container(
                    // color: Colors.red,
                    child: HandColumn(

                        /// taco position widget
                        position:
                            context.watch<GameStatusProvider>().handPosition),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      /// not even sure what the helk this thang is doing if anything
                      // TextWidget(),
                      /// it was making the text not be on screen
                      /// could probably pass the data in,
                      /// will try later
                      Text(context.watch<GameStatusProvider>().progressMessage,
                          style: kMessageStyle)
                    ],
                  ),
                  Row(
                    children:
                        context.watch<GameStatusProvider>().hellFireColumns,
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
              ),
              PowerUps(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: context.watch<GameStatusProvider>().cannons,
              ),
              // context.watch<GameStatusProvider>().redGems.length != 0 ||
              //         context.watch<GameStatusProvider>().colorGems.length != 0
              //     ? PowerUps()
              //     : kblankIcon,
              // PowerUps(),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: context.watch<GameStatusProvider>().cannons,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // SizedBox(
                      //   height: 40.0,
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CannonSwitch(
                            cannonIsLoaded:
                                context.watch<GameStatusProvider>().fullyLoaded,
                            remainingAmmo: context
                                .watch<GameStatusProvider>()
                                .roundsInMagazine,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'images/plasmaChargeForButton.gif')),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              context.read<GameStatusProvider>().handJump();
                            },
                            child: Container(
                              width: 150.0,
                              height: 100,
                              child: Center(
                                child: Text(
                                  'jump',
                                  style: kButtonStyle,
                                ),
                              ),
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   height: 50.0,
                      // ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'images/plasmaChargeForButton.gif')),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              context.read<GameStatusProvider>().handDive();
                            },
                            child: Container(
                              width: 150.0,
                              height: 100.0,
                              child: Center(
                                child: Text(
                                  'dive',
                                  style: kButtonStyle,
                                ),
                              ),
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      context.watch<GameStatusProvider>().nukeList.isNotEmpty ==
                              true
                          ? GestureDetector(
                              onTap: () {
                                context
                                    .read<GameStatusProvider>()
                                    .nuclearExplosionOnScreen();
                              },
                              child: Row(
                                children: context
                                    .watch<GameStatusProvider>()
                                    .nukeList,
                              ),
                            )
                          : Container(
                              height: 70.0,
                            ),
                      SizedBox(
                        height: 20.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          context.read<GameStatusProvider>().handClimb();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'images/plasmaChargeForButton.gif')),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 100.0,
                              width: 150.0,
                              // decoration: BoxDecoration(
                              //   image: DecorationImage(
                              //       fit: BoxFit.cover,
                              //       image: AssetImage(
                              //           'images/plasmaChargeForButton.gif')),
                              // ),
                              child: Center(
                                child: Text(
                                  'climb',
                                  style: kButtonStyle,
                                ),
                              ),
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              SecondPowerUps(),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
          context
                      .watch<GameStatusProvider>()
                      .shouldDisplayDoublePointsEffects ==
                  true
              ? Column(
                  children: [
                    // SizedBox(
                    //   height: 200.0,
                    // ),
                    Container(
                      height: 700,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/2xWinEffect2.gif')),
                      ),
                    ),
                  ],
                )
              : Container(),
        ],
      ),
    );
  }
}
