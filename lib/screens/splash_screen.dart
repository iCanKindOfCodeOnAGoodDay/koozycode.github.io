import 'dart:async';

import 'package:flappy_taco/constants.dart';
import 'package:flappy_taco/providers/game_status_provider.dart';
import 'package:flappy_taco/screens/game_play_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState() {
    super.initState();

    /// TODO check if user is logged in
    /// if they are, play background music and
    /// send them to the game play screen
    /// TODO for now, send user straight to game play screen after a delay to display splash screen
    Timer transitionTimer = Timer(Duration(seconds: 5), () {
      context.read<GameStatusProvider>().fireDoublePointsEffects();
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) {
            // play sounds
            return GamePlayScreen();
          },
        ),
      );
    });

    void buildRowOfCoins() {
      for (var i = 0; i < 13; i++) {
        int delay = i * 200;
        Timer(Duration(milliseconds: delay), () {
          coinList.removeAt(coinList.length - 1);

          coinList.insert(
              0,
              (Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    // height: 38.0,
                    // width: 38.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image:
                                AssetImage('images/pendantNew14Colors.gif'))),
                  ),
                ),
              )));
          setState(() {});
        });
      }
    }

    buildRowOfCoins();

    Timer imageTimer1a = Timer(Duration(milliseconds: 500), () {
      setState(() {
        // imageFileName = 'caroleLynnRayGun.gif';
        imageFileName = 'zombieChargeT.gif';

        fireBallPathTop = 'whiteFireBall.gif';
        fireBallPathBottom = 'whiteFireBall.gif';
      });
    });

    ///  image chaninging timer
    Timer imageTimer = Timer(Duration(seconds: 1), () {
      setState(() {
        imageFileName = 'thingStichedWalkingXX.gif';
        fireBallPathTop = 'fireBallXFlashing.gif';
        fireBallPathBottom = 'fireBallXPurple.gif';
      });
    });

    Timer imageTimer2a = Timer(Duration(milliseconds: 1500), () {
      setState(() {
        imageFileName = 'thingRightTraced.png';
        fireBallPathTop = 'fireBallXFlashing.gif';
        fireBallPathBottom = 'fireBallXPurple.gif';
      });
    });

    Timer imageTimer2 = Timer(Duration(seconds: 2), () {
      setState(() {
        imageFileName = 'xThingRedM4.png';
        fireBallPathTop = 'fireBallXPurple.gif';

        fireBallPathBottom = 'fireBallXFlashing.gif';
      });
    });

    Timer imageTimer3a = Timer(Duration(milliseconds: 2500), () {
      setState(() {
        imageFileName = 'bloodyThumb.png';
        fireBallPathTop = 'whiteFireBall.gif';
        fireBallPathBottom = 'whiteFireBall.gif';
      });
    });

    Timer imageTimer3 = Timer(Duration(seconds: 3), () {
      setState(() {
        imageFileName = 'xxNinjaStar.gif';
        fireBallPathTop = 'fireBallXFlashing.gif';
        fireBallPathBottom = 'fireBallXPurple.gif';
      });
    });
  }

  List<Widget> coinList = [
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

  String imageFileName = "thingStichedWalkingXX.gif";

  String fireBallPathTop = 'fireBallXPurple.gif';

  String fireBallPathBottom = 'fireBallXFlashing.gif';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(20.0),
        //   image: DecorationImage(
        //       fit: BoxFit.cover, image: AssetImage('images/redChip.jpg')),
        // ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: Hero(
                  tag: 'fireBall',
                  child: Container(
                    // width: 100.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage('images/$fireBallPathTop'))),
                  ),
                ),
              ),
              Container(
                height: 40.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: coinList,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('images/ledScreenBackground.jpg'))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    ///TODO use dynamic sizes using media query
                    height: 400.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('images/gameOver.GIF'))),
                    child: Center(
                        child: Hero(
                      tag: "pimpedRayGun",
                      child: Container(
                        height: imageFileName == 'thingRightDead.png'
                            ? 300.0
                            : imageFileName == 'zombieChargeT.gif'
                                ? 300.0
                                : 150.0,
                        width: imageFileName == 'bloodyThumb.png'
                            ? 200.0
                            : imageFileName == 'xThingRedM4.png'
                                ? 400.0
                                : 300.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: AssetImage('images/$imageFileName'))),
                      ),
                    )),
                  ),
                ),
              ),
              Container(
                height: 40.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: coinList,
                ),
              ),
              Expanded(
                child: Hero(
                  tag: 'fireBall',
                  child: Container(
                    // width: 100.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage('images/$fireBallPathBottom'))),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
