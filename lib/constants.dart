import 'package:flutter/material.dart';

Color kBlankColor = Color(0x00000000);

Color kBlockColor = Colors.white;

Color kBlankSquare = Color(0x00000000);

TextStyle kMessageStyle = TextStyle(
    color: Colors.white70, fontSize: 20.0, fontWeight: FontWeight.w900);

TextStyle kScoreStyle = TextStyle(
    color: Colors.white70, fontSize: 25.0, fontWeight: FontWeight.bold);

TextStyle kButtonStyle =
    TextStyle(fontSize: 40.0, fontWeight: FontWeight.w900, color: Colors.white);

TextStyle kSmallButton =
    TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white);

Color kTransparent = Color(0x00000000);

Container kThing = Container(
  height: 30.0,
  width: 60.0,
  decoration: BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('images/rayGunPimpedEnergy.gif'))),
);

Container kThingFalling = Container(
  height: 30.0,
  width: 30.0,
  decoration: BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.cover, image: AssetImage('images/thingSquare.gif'))),
);

Container kSkullCoin = Container(
  height: 30.0,
  width: 30.0,
  decoration: BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.cover, image: AssetImage('images/skullCoin.png'))),
);

Icon kblankIcon = Icon(
  Icons.circle,
  color: Color(0x00000000),
  size: 30.0,
);

Hero kRedGem = Hero(
  tag: 'red',
  child: Container(
    height: 30.0,
    width: 30.0,
    decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'images/blood.png',
              // 'images/shieldRingXX.png',
            ))),
  ),
);

Container kKnifePowerUp = Container(
  height: 30.0,
  width: 30.0,
  decoration: BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('images/switchBladeBloody.gif'))),
);

Hero kFlameFace = Hero(
  tag: 'face',
  child: Container(
    height: 30.0,
    width: 30.0,
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('images/fireballX.gif'),
      ),
    ),
  ),
);

Hero kExtraLife = Hero(
  tag: 'thing',
  child: Container(
    height: 30.0,
    width: 30.0,
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('images/thingWalkingLeft.gif'),
      ),
    ),
  ),
);

Hero kFlashingGem = Hero(
  tag: 'flashing',
  child: Container(
    height: 30.0,
    width: 30.0,
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('images/rubyColorGif.gif'),
      ),
    ),
  ),
);

Container kFlyingFireBall = Container(
  height: 30.0,
  width: 30.0,
  decoration: BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.cover, image: AssetImage('images/fireball6.png'))),
);

Container kNuke = Container(
  height: 30.0,
  width: 30.0,
  decoration: BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.cover, image: AssetImage('images/bomb.png'))),
);

Container kSkullPatch = Container(
  height: 30.0,
  width: 30.0,
  decoration: BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'images/octopus.png',
            // 'images/horseTransparent.gif',
          ))),
);

Container kTimeBombLarge = Container(
  height: 70.0,
  width: 70.0,
  decoration: BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.cover, image: AssetImage('images/dynamite.png'))),
);

Container kTimeBomb = Container(
  height: 30.0,
  width: 30.0,
  decoration: BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.cover, image: AssetImage('images/dynamite.png'))),
);

Container kNukeExplosion = Container(
  height: 30.0,
  width: 30.0,
  decoration: BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.cover, image: AssetImage('images/nukeExplosion.jpg'))),
);

Container kLargeHellfireOrange = Container(
  height: 50.0,
  width: 50.0,
  decoration: BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.cover, image: AssetImage('images/fireBallXYellow2.gif'))),
);

Container kLargeHellfireBlue = Container(
  height: 50.0,
  width: 50.0,
  decoration: BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('images/invertGreenFireBall.gif'))),
);

Container kLargeHellfireYellow = Container(
  height: 50.0,
  width: 50.0,
  decoration: BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.cover, image: AssetImage('images/yellowFireBall3.gif'))),
);

Container kLargeHellfirePurple = Container(
  height: 50.0,
  width: 50.0,
  decoration: BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.cover, image: AssetImage('images/fireBallXPurple.gif'))),
);

Container kLargeHellfireFlashing = Container(
  height: 50.0,
  width: 50.0,
  decoration: BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('images/fireBallXFlashing2.gif'))),
);

Container kLargeHellfireBlack = Container(
  height: 50.0,
  width: 50.0,
  decoration: BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.cover, image: AssetImage('images/greyFireBall.gif'))),
);

Container kLargeHellfireWhite = Container(
  height: 50.0,
  width: 50.0,
  decoration: BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.cover, image: AssetImage('images/whiteFireBall.gif'))),
);

///
///
///
Container kGoldCoin = Container(
  height: 30.0,
  width: 30.0,
  decoration: BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.cover, image: AssetImage('images/coinFlip.gif'))),
);

Container kContactCoin = Container(
  height: 30.0,
  width: 30.0,
  decoration: BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.cover, image: AssetImage('images/coinWin.gif'))),
);

Container kDeadHand = Container(
  height: 30.0,
  width: 30.0,
  decoration: BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.cover, image: AssetImage('images/deadHand.gif'))),
);
