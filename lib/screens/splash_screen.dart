import 'dart:async';

import 'package:flappy_taco/constants.dart';
import 'package:flappy_taco/models/sound_model.dart';
import 'package:flappy_taco/providers/game_status_provider.dart';
import 'package:flappy_taco/screens/game_play_screen.dart';
import 'package:flappy_taco/widgets/rotating_barrier_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/sound_model.dart';
import '../providers/premium_content_provider.dart';

SoundModel soundModel = SoundModel();

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState() {
    super.initState();
    soundModel.playFlapFlapFlap(true);

    // context.read<GameStatusProvider>().setBackgroundMusicToTrue();
    // soundModel.playSpookyMusic(
    //     context.read<GameStatusProvider>().hearBackgroundMusic);
    // soundModel.playLoopSizzleSound(
    //     context.read<GameStatusProvider>().hearBackgroundMusic);
    // // soundModel.playCreapyWingsSound(
    // //     context.read<GameStatusProvider>().hearBackgroundMusic);
    // soundModel.playLoopElectricChair(
    //     context.read<GameStatusProvider>().hearBackgroundMusic);
    // // soundModel.playScreechSound(
    // //     context.read<GameStatusProvider>().hearBackgroundMusic);
    // soundModel.playLoopFireworksSounds(
    //     context.read<GameStatusProvider>().hearBackgroundMusic);

    /// TODO check if user is logged in
    /// if they are, play background music and
    /// send them to the game play screen
    /// TODO for now, send user straight to game play screen after a delay to display splash screen
    Timer transitionTimer = Timer(Duration(seconds: 5), () {
      context.read<GameStatusProvider>().fireExplosion1();
      soundModel.playOtherSounds5x('customExplosion.mp3', true);
      soundModel.playSpookyMusic(true);
      // soundModel.playOtherSounds5x('assets/explosionAndDebris.mp3', true);
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) {
            // play sounds
            return GamePlayScreen();
          },
        ),
      );
    });

    void replaceBlankIconsWithZombieCards() {
      for (var i = 0; i < 13; i++) {
        /// replace 13 blank icons by removing the blank icon at the end
        /// every 200th of a seconds
        int delay = i * 200;
        Timer(Duration(milliseconds: delay), () {
          listOfIconsToBeReplacedByZombieCards
              .removeAt(listOfIconsToBeReplacedByZombieCards.length - 1);
          listOfIconsToBeReplacedByZombieCards.insert(
              0,
              (Expanded(
                child: RotatingBarrierWidget(
                  path: 'mmmZombieFuzzyHotPink.gif',
                ),
              )));
          setState(() {});

          /// udate the interface 13 times
        });
      }
    }

    replaceBlankIconsWithZombieCards();

    /// carrry out the instructions defined above
    //

    Timer imageTimer1a = Timer(Duration(milliseconds: 500), () {
      setState(() {
        // imageFileName = 'caroleLynnRayGun.gif';
        imageFileName = 'iceCreamXXX.gif';

        fireBallPathTop = 'iceCreamXXX.gif';
        fireBallPathBottom = 'mmmZombieFuzzyRedXXX.gif';
      });
    });

    ///  image chaninging timer
    Timer imageTimer = Timer(Duration(seconds: 1), () {
      setState(() {
        imageFileName = 'thingWalkingStichedXXLeft.gif';
        fireBallPathTop = 'mmmZombieFuzzyRedXXX.gif';
        fireBallPathBottom = 'iceCreamXXX.gif';
      });
    });

    Timer imageTimer2a = Timer(Duration(milliseconds: 1500), () {
      setState(() {
        imageFileName = 'thingRightTracedBlackGreenXxx12.gif';
        fireBallPathTop = 'consumeJesus-unscreen.gif';
        fireBallPathBottom = 'consumeJesus-unscreen.gif';
      });
    });

    Timer imageTimer2 = Timer(Duration(seconds: 2), () {
      setState(() {
        imageFileName = 'thingRightTracedBlackGreenXxx12.gif';
        fireBallPathTop = 'hotGothInvert.gif';

        fireBallPathBottom = 'iceCreamXXX.gif';
      });
    });

    Timer imageTimer3a = Timer(Duration(milliseconds: 2500), () {
      setState(() {
        imageFileName = 'bloodyThumb.png';
        fireBallPathTop = 'mmmPinUpFuzzBlackSkin123.gif';
        fireBallPathBottom = 'mmmPinUpFuzzBlackSkin123.gif';
      });
    });

    Timer imageTimer3 = Timer(Duration(seconds: 3), () {
      setState(() {
        imageFileName = 'iceCreamXXX.gif';
        fireBallPathTop = 'iceCreamXXX.gif';
        fireBallPathBottom = 'iceCreamXXX.gif';
      });
    });
  }

  List<Widget> listOfIconsToBeReplacedByZombieCards = [
    kblankIcon,
    kblankIcon,
    kblankIcon,
    kblankIcon,
    kblankIcon,
    kblankIcon,
    kblankIcon,
    kblankIcon,
    kblankIcon,
    kblankIcon,
    kblankIcon,
    kblankIcon,
    kblankIcon,
  ];

  String imageFileName = "thingRightTracedBlackGreenXxx12.gif";

  String fireBallPathTop = 'thingRightTracedBlackGreenXxx12.gif';

  String fireBallPathBottom = 'iceCreamXXX.gif';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'images/12dotSquashSuperDevice.gif',
                // 'images/${context.watch<PremiumContentProvider>().pathToSelectedGameConsole}',
              )),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40.0,
              ),
              // Container(
              //   height: 40.0,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     children: listOfIconsToBeReplacedByZombieCards,
              //   ),
              // ),
              // Expanded(
              //   child: Hero(
              //     tag: 'fireBall',
              //     child: Container(
              //       // width: 100.0,
              //       decoration: BoxDecoration(
              //           image: DecorationImage(
              //               fit: BoxFit.fitHeight,
              //               image:
              //                   AssetImage('images/iceCreamXXX.gif'))),
              //     ),
              //   ),
              // ),
              Container(
                height: 40.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: listOfIconsToBeReplacedByZombieCards,
                ),
              ),
              Container(
                height: 40.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: listOfIconsToBeReplacedByZombieCards,
                ),
              ),
              Container(
                height: 40.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: listOfIconsToBeReplacedByZombieCards,
                ),
              ),
              Container(
                height: 40.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: listOfIconsToBeReplacedByZombieCards,
                ),
              ),
              Container(
                height: 40.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: listOfIconsToBeReplacedByZombieCards,
                ),
              ),
              Container(
                height: 40.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: listOfIconsToBeReplacedByZombieCards,
                ),
              ),
              Expanded(
                child: Hero(
                  tag: 'fireBall',
                  child: Container(
                    // width: 100.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage('images/$fireBallPathTop'))),
                  ),
                ),
              ),

              // Container(
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(20),
              //       image: DecorationImage(
              //           fit: BoxFit.fill,
              //           image: AssetImage('images/ledScreenBackground.jpg'))),
              //   child: Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Container(
              //       ///TODO use dynamic sizes using media query
              //       height: 400.0,
              //       decoration: BoxDecoration(
              //           image: DecorationImage(
              //               fit: BoxFit.fill,
              //               image: AssetImage('images/gameOver.GIF'))),
              //       child: Center(
              //           child: Hero(
              //         tag: "pimpedRayGun",
              //         child: Container(
              //           height: imageFileName == 'thingRightTracedBlackGreenXxx12.gif'
              //               ? 300.0
              //               : imageFileName == 'consumeTrumpX3.gif'
              //                   ? 300.0
              //                   : 150.0,
              //           width: imageFileName == 'bloodyThumb.png'
              //               ? 200.0
              //               : imageFileName ==
              //                       'thingRightTracedBlackGreenXxx12.gif'
              //                   ? 400.0
              //                   : 300.0,
              //           decoration: BoxDecoration(
              //               image: DecorationImage(
              //                   fit: BoxFit.fitHeight,
              //                   image: AssetImage('images/$imageFileName'))),
              //         ),
              //       )),
              //     ),
              //   ),
              // ),
              // Expanded(
              //   child: Hero(
              //     tag: 'fireBall',
              //     child: Container(
              //       // width: 100.0,
              //       decoration: BoxDecoration(
              //           image: DecorationImage(
              //               fit: BoxFit.fitHeight,
              //               image:
              //                   AssetImage('images/iceCreamXXX.gif'))),
              //     ),
              //   ),
              // ),
              // Expanded(
              //   child: Hero(
              //     tag: 'fireBall',
              //     child: Container(
              //       // width: 100.0,
              //       decoration: BoxDecoration(
              //           image: DecorationImage(
              //               fit: BoxFit.fitHeight,
              //               image: AssetImage('images/$fireBallPathBottom'))),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
