import 'dart:async';

import 'package:flappy_taco/constants.dart';
import 'package:flappy_taco/providers/game_status_provider.dart';
import 'package:flappy_taco/widgets/cannon_button.dart';
import 'package:flappy_taco/widgets/cannon_switch_widget.dart';
import 'package:flappy_taco/widgets/flashing_text_widget.dart';
import 'package:flappy_taco/widgets/power_up_widgets_lives_and.dart';
import 'package:flappy_taco/widgets/power_ups_widget.dart';
import 'package:flappy_taco/widgets/taco_widget.dart';
import 'package:flappy_taco/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class GamePlayScreen extends StatelessWidget {
  static const colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];

  static const colorizeTextStyle = TextStyle(
    fontSize: 50.0,
    fontFamily: 'Horizon',
  );

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
                      ? Text(
                          context.watch<GameStatusProvider>().score.toString(),
                          style: kScoreStyle)
                      : FlashingText(
                          text: context
                              .watch<GameStatusProvider>()
                              .score
                              .toString()),
                  context.watch<GameStatusProvider>().crashed == true
                      ? GestureDetector(
                          onTap: () {
                            context.read<GameStatusProvider>().start();
                            context.read<GameStatusProvider>().handFall();
                            context.read<GameStatusProvider>().resetGame();
                          },
                          child: Container(
                            color: Colors.green,
                            child: Text(
                              'start',
                              style: kButtonStyle,
                            ),
                          ))
                      : context.watch<GameStatusProvider>().isPaused == false
                          ? GestureDetector(
                              onTap: () {
                                context.read<GameStatusProvider>().pauseGame();
                              },
                              child: Container(
                                  color: Colors.red,
                                  child: Text(
                                    'pause',
                                    //// when user taps pause
                                    //// a button prompting the user to resume game should appear
                                    style: kButtonStyle,
                                  )),
                            )
                          : GestureDetector(
                              onTap: () {
                                context.read<GameStatusProvider>().resumeGame();
                              },
                              child: Container(
                                  color: Colors.green,
                                  child: Text(
                                    'resume',
                                    //// when user taps pause
                                    //// a button prompting the user to resume game should appear
                                    style: kButtonStyle,
                                  )),
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
                                false
                            ? AssetImage('images/night5.gif')
                            : AssetImage('images/skelatonStrobe.gif'),
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
                    child: TacoWidget(

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
                ],
              ),
              // context.watch<GameStatusProvider>().redGems.length != 0 ||
              //         context.watch<GameStatusProvider>().colorGems.length != 0
              //     ? PowerUps()
              //     : kblankIcon,
              PowerUps(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: context.watch<GameStatusProvider>().cannons,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // SizedBox(
                      //   height: 40.0,
                      // ),
                      CannonSwitch(
                        cannonIsLoaded:
                            context.watch<GameStatusProvider>().fullyLoaded,
                        remainingAmmo:
                            context.watch<GameStatusProvider>().ammunition,
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      GestureDetector(
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
                          color: Colors.deepPurple,
                        ),
                      ),
                      // SizedBox(
                      //   height: 50.0,
                      // ),
                      GestureDetector(
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
                          color: Colors.red,
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
                              height: 50.0,
                            ),
                      SizedBox(
                        height: 20.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          context.read<GameStatusProvider>().handClimb();
                        },
                        child: Container(
                          height: 100.0,
                          width: 150.0,
                          child: Center(
                            child: Text(
                              'climb',
                              style: kButtonStyle,
                            ),
                          ),
                          color: Colors.green,
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
