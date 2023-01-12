import 'dart:async';
import 'dart:math';

import 'package:flappy_taco/constants.dart';
import 'package:flappy_taco/widgets/winnables/winnable_rockets.dart';
import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart';

import '../widgets/premium_gats.dart';
import '../widgets/winnables/winnable_beasts.dart';
import '../widgets/winnables/winnable_consoles.dart';
import '../widgets/winnables/winnable_shanks.dart';

enum PremiumContentType {
  gat,
  grenade,
  beast,
  console,
  shank,
  rocket,
}

// enum SelectedGatType {
//   draco,
//   caroleLynn,
//   grenadeLauncher,
//   keltechPistol,
//   pirateMusket,
//   brightOutlinedPistol,
//   shortM4,
//   tracedRayGun,
//   block9,
//   goldDeagle,
//   darrenger,
//   capPshPsh,
//   toyM4,
//   sBR,
// }
//
// enum SelectedTimeBomb {
//   dynamite,
//   icedGrenade,
//   greenGrenade,
//   blueGrenade,
//   sharkBomb,
//   sciFi1,
//   sciFi2,
//   cherryBomb1,
//   cherryBomb2,
// }

class PremiumContentProvider with ChangeNotifier {
  String _pathToSelectedBarrier = 'consumeTrumpX3.gif';
  // String _pathToSelectedBarrier = 'zombieHandXX.gif';

  String get pathToSelectedBarrier => _pathToSelectedBarrier;

  int _iterateThroughBarrierIndex = 0;

  int get iterateThroughBarrierIndex => _iterateThroughBarrierIndex;

  List<String> _barrierFileNames = [
    'zombieChargeT.gif',
    'consumeBaskin-unscreen.gif',
    'consumeBieber-unscreen.gif',
    'consumeHillary-unscreen.gif',
    // 'consumeJesus-unscreen.gif',
    'consumeMcdonalds-unscreen.gif',
    'consumeMichelle-unscreen.gif',
    'consumeMonsterMiley.gif',
    'consumePalin-unscreen.gif',
    'consumeSkull-unscreen.gif',
    'consumeTrumpX3.gif',
    'zombieHandXX.gif',
    // 'pendantNew14Colors.gif',
    // 'friendlyMonster2.gif',
    'friendlyMonster3.gif',
    'friendlySpider1.gif',
    '21BlueZombieSuit.gif',
    // '21FatBlueZombie.gif',
    // '21Savage.gif',
    // '21Trump.gif',
    // '21Trump2.gif',
    // '21Unicorn.GIF',

    // 'friendlySpider2.gif',
    // 'friendlySpider3.gif',

    // 'sparklingDiamondsPowerUp.gif',
    // 'zombieHandReach.gif',
  ];

  void changeBarrier() {
    if (_iterateThroughBarrierIndex >= _barrierFileNames.length - 1) {
      _iterateThroughBarrierIndex = 0;
    } else {
      _iterateThroughBarrierIndex++;
    }
    _pathToSelectedBarrier = _barrierFileNames[_iterateThroughBarrierIndex];
    _pathToChangeChestImageFromClosedToOpen = 'xClosedChest.gif';

    notifyListeners();
  }

  String _pathToSelectedBackgroundImage = 'horror41.JPG';

  String get pathToSelectedBackgroundImage => _pathToSelectedBackgroundImage;

  String _pathToPreviousBackgroundImage = 'bonusSpace2.GIF';

  String get pathToPreviousBackgroundImage => _pathToPreviousBackgroundImage;

  int _backgroundIndex = 0;

  void changeBackgroundImage(bool goBackwardsOnTheList) {
    /// go forward on the list
    if (goBackwardsOnTheList == false) {
      if (_backgroundIndex >= backgroundImagesFileNames.length) {
        /// start from the beginning of the list
        _backgroundIndex = 0;
        _pathToSelectedBackgroundImage = backgroundImagesFileNames[0];
        _pathToPreviousBackgroundImage =
            backgroundImagesFileNames[backgroundImagesFileNames.length - 1];
      } else {
        _backgroundIndex++;
        _pathToSelectedBackgroundImage =
            backgroundImagesFileNames[_backgroundIndex];

        _pathToPreviousBackgroundImage =
            backgroundImagesFileNames[_backgroundIndex - 1];
      }
    } else {
      /// go backwards on the list
      if (_backgroundIndex <= 0) {
        /// if we have reached the beginning of the list
        _backgroundIndex = backgroundImagesFileNames.length - 1;

        _pathToSelectedBackgroundImage =
            backgroundImagesFileNames[backgroundImagesFileNames.length - 1];

        _pathToPreviousBackgroundImage = backgroundImagesFileNames[0];
      } else {
        _backgroundIndex--;
        _pathToPreviousBackgroundImage =
            backgroundImagesFileNames[_backgroundIndex - 1];

        _pathToSelectedBackgroundImage =
            backgroundImagesFileNames[_backgroundIndex];
      }
    }
    notifyListeners();
  }

  void changeBackgroundImageHorror(bool goBackwardsOnTheList) {
    /// go forward on the list
    if (goBackwardsOnTheList == false) {
      if (_horrorIndex >= horrorBackgroundImageFileNames.length) {
        /// start from the beginning of the list
        _horrorIndex = 0;
        _pathToSelectedBackgroundImage = horrorBackgroundImageFileNames[0];
        _pathToPreviousBackgroundImage = horrorBackgroundImageFileNames[
            horrorBackgroundImageFileNames.length - 1];
      } else {
        _horrorIndex++;
        _pathToSelectedBackgroundImage =
            horrorBackgroundImageFileNames[_horrorIndex];

        _pathToPreviousBackgroundImage =
            horrorBackgroundImageFileNames[_horrorIndex - 1];
      }
    } else {
      /// go backwards on the list
      if (_horrorIndex <= 0) {
        /// if we have reached the beginning of the list
        _horrorIndex = horrorBackgroundImageFileNames.length - 1;

        _pathToSelectedBackgroundImage = horrorBackgroundImageFileNames[
            horrorBackgroundImageFileNames.length - 1];

        _pathToPreviousBackgroundImage = horrorBackgroundImageFileNames[0];
      } else {
        _horrorIndex--;
        _pathToPreviousBackgroundImage =
            horrorBackgroundImageFileNames[_horrorIndex - 1];

        _pathToSelectedBackgroundImage =
            horrorBackgroundImageFileNames[_horrorIndex];
      }
    }
    notifyListeners();
  }

  int _horrorIndex = 10;

  int get horrorIndex => _horrorIndex;

  List<String> horrorBackgroundImageFileNames = [
    // 'horror1.GIF',
    // 'horror2.JPG',
    // 'horror3.jpg',
    // 'horror4.JPG',
    // 'horror5.JPG',
    // 'horror6.JPG',
    // 'horror7.jpg',
    // 'horror8.JPG',
    // 'horror9.JPG',
    'horror10.JPG',
    'horror11.PNG',
    // 'horror12.JPG',
    'horror13.JPG',
    // 'horror14.JPG',
    // 'horror15.PNG',
    // 'horror16.JPG',
    // 'horror17.PNG',
    // 'horror18.JPG',
    // 'horror19.JPG',
    // 'horror20.JPG',
    // 'horror21.JPG',
    // 'horror22.JPG',
    'horror23.JPG',
    // 'horror24.JPG',
    // 'horror25.JPG',
    'horror26.JPG',
    // 'horror27.JPG',
    'horror28.JPG',
    'horror29.JPG',
    // 'horror30.JPG',
    // 'horror31.JPG',
    // 'horror32.JPG',
    // 'horror33.JPG',
    'horror34.JPG',
    'horror35.JPG',
    // 'horror36.JPG',
    // 'horror37.JPG',
    // 'horror38.PNG',
    'horror39.JPG',
    // 'horror40.JPG',
    'horror41.JPG',
    // 'horror42.JPG',
    // 'horror43.JPG',
    // 'annabel.GIF',
    // 'babyHorrorEyes.gif',
  ];

  List<String> backgroundImagesFileNames = [
    "dcLoopGrayScale.gif",
    "caveDarkRed.gif",

    'caveLightBrown.gif',
    //
    // 'blackWater.gif',
    'fire.gif',
    // 'errorMessage.GIF',
    // 'redChip.jpg',
    // // 'enlessColorHoleRecoloredYellowOrange.gif',
    // 'fusion3.gif',
    // 'fusionRed.gif',
    // 'katyPerrySexy.gif',
    // 'microChipOne.gif',
    // "mileySnoopNicholasCage.gif",
    // 'purpleEnergyBlack.gif',
    // 'xxNinjaStar.gif',
    // 'colorfulX.gif',
    // 'colorful2.gif',
    // 'bloodMoon.gif',
    // 'blackWhiteExplosion.gif',
    // 'blackTunnel.gif',

    // 'blackWater.gif',
    // "bgAlienWorld.GIF",
    // "bgApple.GIF",
    // "bgBitArtCity.GIF",
    // "bgBitArtTokyo.GIF",
    // "bgBitCity.GIF",
    "bgBlackHole.GIF",
    // "bgCityScape.GIF",
    // "bgColorCubes.GIF",
    // "bgColorSpirals.GIF",
    // "bgColorWaves.GIF",
    // "bgCube.GIF",
    // "bgEndlessRunner.GIF",
    // "bgFlower.GIF",
    // "bgFlowerX.GIF",
    // "bgForrestNight.GIF",
    // "bgForrestScary.GIF",
    // "bgHandStars.GIF",
    // "bgIllusion.GIF",
    // "bgOwl.GIF",
    // "bgPlanets.GIF",
    "bgReactorCore.GIF",
    // "bgRipples.GIF",
    // "bgSamuri.GIF",
    // "bgSpiralX.GIF",
    // "bgStar.GIF",
    // "bgTokyo.GIF",
    // "bgTriangleGlow.GIF",
    // "bgWaterWalker.GIF",
    // "bgWaves.GIF",
    // "bgWolfJump.GIF",
    // "bonusCar.GIF",
    // "bonusCar2.GIF",
    // "bonusCar3.GIF",
    // "bonusCar4.GIF",
    // "bonusCrumble.GIF",
    // "bonusEscalator.GIF",
    // "bonusEscalator2.GIF",
    // "bonusEww.GIF",
    // "bonusEyes.GIF",
    // "bonusGeo.GIF",
    // "bonusGeo2.GIF",
    // "bonusGeo3.GIF",
    // "bonusGeo4.GIF",
    // "bonusHotdog.GIF",
    // "bonusHotdog2.GIF",
    // "bonusHotdog3.GIF",
    // "bonusKaleido.GIF",
    // "bonusMountains.GIF",
    // "bonusMountains2.GIF",
    // "bonusRoad.GIF",
    // "bonusShapes.GIF",
    // "bonusShapes2.GIF",
    // "bonusShapes3.GIF",
    // "bonusShapes4.GIF",
    "bonusSpace2.GIF",
    // "bonusSpaceStairs.GIF",
    // "bonusSpiral.GIF",
    // "bonusSplash.GIF",
    // "bonusStayingAlive.GIF",
    // "bonusStreaks.GIF",
    // "bonusTractor.GIF",
    // "bonusTraffic.GIF",
    // "bonusTraffic2.GIF",
    // "bonusTraffic3.GIF",
    // "bonusTraffic4.GIF",
  ];

  String _playersGatChoiceString = 'xThingRedM4.png';

  String get playersGatChoiceString => _playersGatChoiceString;

  String _playersGrenadeChoiceString = 'timeBomb.png';
  String get playersGrenadeChoiceString => _playersGrenadeChoiceString;

  String _pathToNewItemFromChest = 'xThingKeltechPistol.png';

  String get pathToNewItemFromChest => _pathToNewItemFromChest;

  int _amountOfRubiesReadyToUse = 10;

  int get amountOfRubiesReadyToUse => _amountOfRubiesReadyToUse;

  String _pathToSelectedKnife = 'xxNinjaStar.gif';

  String get pathToSelectedKnife => _pathToSelectedKnife;

  void changeKnife(String knifePath) {
    _pathToSelectedKnife = knifePath;
    // _shouldHideTheLastPrize = true;
    _pathToChangeChestImageFromClosedToOpen = 'xClosedChest.gif';

    notifyListeners();
  }

  String _pathToSelectedBeast = 'bats2.gif';

  String get pathToSelectedBeast => _pathToSelectedBeast;

  void changeBeast(String beastPath) {
    _pathToSelectedBeast = beastPath;
    // _shouldHideTheLastPrize = true;
    _pathToChangeChestImageFromClosedToOpen = 'xClosedChest.gif';

    notifyListeners();
  }

  String _pathToSelectedRocket = 'hhRocket7.gif';

  String get pathToSelectedRocket => _pathToSelectedRocket;

  void changeRocket(String rocketPath) {
    _pathToSelectedBeast = rocketPath;
    // _shouldHideTheLastPrize = true;
    _pathToChangeChestImageFromClosedToOpen = 'xClosedChest.gif';

    notifyListeners();
  }

  String _pathToSelectedGameConsole =
      'futuristicGameConsoleNoLogo2BLANKLOGO copy 3.png';

  String get pathToSelectedGameConsole => _pathToSelectedGameConsole;

  void changeConsole(String consolePath) {
    _pathToSelectedGameConsole = consolePath;
    // _shouldHideTheLastPrize = true;
    _pathToChangeChestImageFromClosedToOpen = 'xClosedChest.gif';

    notifyListeners();
  }

  List<PremiumGatsAndGrenades> availableGats = [
    PremiumGatsAndGrenades(
        type: PremiumContentType.gat, path: 'thingGoldDeagle.png'),
    PremiumGatsAndGrenades(
        type: PremiumContentType.console,
        path: 'futuristicGameConsoleNoLogo2BLANKLOGO copy 3.png'),
  ];

  void changeGat(String gatName) {
    _playersGatChoiceString = gatName;
    // _shouldHideTheLastPrize = true;
    _pathToChangeChestImageFromClosedToOpen = 'xClosedChest.gif';

    notifyListeners();
  }

  void changeGrenade(String grenadeName) {
    _playersGrenadeChoiceString = grenadeName;
    // _shouldHideTheLastPrize = true;
    _pathToChangeChestImageFromClosedToOpen = 'xClosedChest.gif';

    notifyListeners();
  }

  String _lastWonPrizeTypeForTheCongratsMessage = 'gat';

  String get lastWonPrizeTypeForTheCongratsMessage =>
      _lastWonPrizeTypeForTheCongratsMessage;

  void setLastPrizeTypeForCongratsMessage() {
    var type = availableGats[availableGats.length - 1].type;
    if (type == PremiumContentType.gat) {
      _lastWonPrizeTypeForTheCongratsMessage = 'gat';
    } else if (type == PremiumContentType.shank) {
      _lastWonPrizeTypeForTheCongratsMessage = 'shank';
    } else if (type == PremiumContentType.console) {
      _lastWonPrizeTypeForTheCongratsMessage = 'console';
    } else if (type == PremiumContentType.beast) {
      _lastWonPrizeTypeForTheCongratsMessage = 'beast';
    } else if (type == PremiumContentType.grenade) {
      _lastWonPrizeTypeForTheCongratsMessage = 'time bomb';
    }
    notifyListeners();
  }

  String _pathToChangeChestImageFromClosedToOpen = 'xClosedChest.gif';

  String get pathToChangeChestImageFromClosedToOpen =>
      _pathToChangeChestImageFromClosedToOpen;

  double _widthOfNewItemForAnimationWhenOpeningChest = 0.0;

  double get widthOfNewItemForAnimationWhenOpeningChest =>
      _widthOfNewItemForAnimationWhenOpeningChest;

  double _heightOfNewItemForAnimationWhenOpeningChest = 0.0;

  double get heightOfNewItemForAnimationWhenOpeningChest =>
      _heightOfNewItemForAnimationWhenOpeningChest;

  bool _shouldHideTheLastPrize = true;

  bool get shouldHideTheLastPrize => _shouldHideTheLastPrize;

  void equipLastWonPrize() {
    // _heightOfNewItemForAnimationWhenOpeningChest = 0;
    var lastWonPrizeType = availableGats[availableGats.length - 1].type;
    var lastWonItemPath = availableGats[availableGats.length - 1].path;
    if (lastWonPrizeType == PremiumContentType.gat) {
      changeGat(lastWonItemPath);
    } else if (lastWonPrizeType == PremiumContentType.grenade) {
      changeGrenade(lastWonItemPath);
    } else if (lastWonPrizeType == PremiumContentType.beast) {
      changeBeast(lastWonItemPath);
    } else if (lastWonPrizeType == PremiumContentType.shank) {
      changeKnife(lastWonItemPath);
    } else if (lastWonPrizeType == PremiumContentType.console) {
      changeConsole(lastWonItemPath);
    }
    notifyListeners();
  }

  void handleAnimation() {
    print('winnables items length is ${_winnables.length}');

    for (var i = 0; i < 300; i++) {
      /// TODO this is where the item size is decided, if game console is won, then size should be different
      /// the brass knucks dont fit either!
      _heightOfNewItemForAnimationWhenOpeningChest = 100;
      _widthOfNewItemForAnimationWhenOpeningChest = 100;
      Timer(Duration(milliseconds: i * 4), () {
        _heightOfNewItemForAnimationWhenOpeningChest++;
        _widthOfNewItemForAnimationWhenOpeningChest++;
        notifyListeners();
      });
    }
  }

  void handleAnimationWhenSelectingAnItemFromList(String itemPath) {
    _pathToNewItemFromChest = itemPath;
    _shouldHideTheLastPrize = false;
    for (var i = 0; i < 300; i++) {
      _heightOfNewItemForAnimationWhenOpeningChest = 100;
      _widthOfNewItemForAnimationWhenOpeningChest = 100;
      Timer(Duration(milliseconds: i * 4), () {
        _heightOfNewItemForAnimationWhenOpeningChest++;
        _widthOfNewItemForAnimationWhenOpeningChest++;
        notifyListeners();
      });
    }
  }

  void closeChestAndHideLastPrize() {
    _shouldHideTheLastPrize = true;

    _pathToChangeChestImageFromClosedToOpen = 'xClosedChest.gif';
    _heightOfNewItemForAnimationWhenOpeningChest = 0;
    notifyListeners();
  }

  void openChestToGetRandomPrize() async {
    closeChestAndHideLastPrize();

    Timer(Duration(milliseconds: 1200), () {
      _shouldHideTheLastPrize = false;
      _pathToChangeChestImageFromClosedToOpen = 'xChestTransparent.gif';
      notifyListeners();

      handleAnimation();
    });

    int randomInt = 0;
    randomInt = Random().nextInt(270);

    notifyListeners();
    Timer(Duration(milliseconds: 1200), () {
      _pathToChangeChestImageFromClosedToOpen = 'xOpenChest.gif';
      notifyListeners();
    });

    if (randomInt <= 2) {
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.gat, path: 'caroleLynnRayGun.gif'));
      _pathToNewItemFromChest = 'caroleLynnRayGun.gif';
      notifyListeners();
    } else if (randomInt <= 5) {
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.gat, path: 'xThingDraco2.png'));
      _pathToNewItemFromChest = 'xThingDraco2.png';
      notifyListeners();
    } else if (randomInt <= 8) {
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.gat, path: 'xThingM203.png'));
      _pathToNewItemFromChest = 'xThingM203.png';
      notifyListeners();
    } else if (randomInt <= 11) {
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.gat, path: 'xThingSniperLong.png'));
      _pathToNewItemFromChest = 'xThingSniperLong.png';
      notifyListeners();
    } else if (randomInt <= 14) {
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.gat, path: 'xThingShotgun2.png'));
      _pathToNewItemFromChest = 'xThingShotgun2.png';
      notifyListeners();
    } else if (randomInt <= 17) {
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.gat, path: 'xThingPurpM4.png'));
      _pathToNewItemFromChest = 'xThingPurpM4.png';
      notifyListeners();
    } else if (randomInt <= 20) {
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.gat, path: 'xThingRedM4.png'));
      _pathToNewItemFromChest = 'xThingRedM4.png';
      notifyListeners();
    } else if (randomInt <= 5) {
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.gat, path: 'xThingDraco.png'));
      _pathToNewItemFromChest = 'xThingDraco.png';
      notifyListeners();
    } else if (randomInt <= 24) {
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.gat, path: 'xThingAK47.png'));
      _pathToNewItemFromChest = 'xThingAK47.png';
      notifyListeners();
    } else if (randomInt <= 27) {
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.gat, path: 'thingToyM4.png'));
      _pathToNewItemFromChest = 'thingToyM4.png';
      notifyListeners();
    } else if (randomInt <= 30) {
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.gat, path: 'thingBlock9.png'));
      _pathToNewItemFromChest = 'thingBlock9.png';
      notifyListeners();
    } else if (randomInt <= 35) {
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.gat, path: 'thingSBR.png'));
      _pathToNewItemFromChest = 'thingSBR.png';
      notifyListeners();
    } else if (randomInt <= 45) {
      _pathToNewItemFromChest = 'thingGoldDeagle.png';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.gat, path: 'thingGoldDeagle.png'));
    } else if (randomInt <= 50) {
      _pathToNewItemFromChest = 'xThingShortM4Carbine.png';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.gat, path: 'xThingShortM4Carbine.png'));
    } else if (randomInt <= 55) {
      _pathToNewItemFromChest = 'xThingPirate.png';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.gat, path: 'xThingPirate.png'));
    } else if (randomInt <= 60) {
      _pathToNewItemFromChest = 'xThingRightBrightPistol.png';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.gat, path: 'xThingRightBrightPistol.png'));
    } else if (randomInt <= 65) {
      _pathToNewItemFromChest = 'thingDarrenger.png';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.gat, path: 'thingDarrenger.png'));
    } else if (randomInt <= 70) {
      _pathToNewItemFromChest = 'xThingKeltechPistol.png';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.gat, path: 'xThingKeltechPistol.png'));
    } else if (randomInt <= 75) {
      _pathToNewItemFromChest = 'xThingGrenadeLauncher.png';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.gat, path: 'xThingGrenadeLauncher.png'));
    } else if (randomInt <= 80) {
      _pathToNewItemFromChest = 'xGreenGrenade.png';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.grenade, path: 'xGreenGrenade.png'));
    } else if (randomInt <= 85) {
      _pathToNewItemFromChest = 'xBlueGrendade.png';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.grenade, path: 'xBlueGrendade.png'));
    } else if (randomInt <= 90) {
      _pathToNewItemFromChest = 'xBlueGrendade.png';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.grenade, path: 'xBlueGrendade.png'));
    } else if (randomInt <= 105) {
      _pathToNewItemFromChest = 'sciFiGrendade.png';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.grenade, path: 'sciFiGrendade.png'));
    } else if (randomInt <= 115) {
      _pathToNewItemFromChest = 'sciFiGernade2.png';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.grenade, path: 'sciFiGernade2.png'));
    } else if (randomInt <= 125) {
      _pathToNewItemFromChest = 'cherryBomb.png';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.grenade, path: 'cherryBomb.png'));
    } else if (randomInt <= 135) {
      _pathToNewItemFromChest = 'cherryBomb4.png';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.grenade, path: 'cherryBomb4.png'));
    } else if (randomInt <= 145) {
      _pathToNewItemFromChest = 'xSharkBomb.png';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.grenade, path: 'xSharkBomb.png'));
    } else if (randomInt <= 146) {
      _pathToNewItemFromChest =
          'futuristicGameConsoleNoLogo2BLANKLOGO copy 3.png';

      /// black console
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.console,
          path: 'futuristicGameConsoleNoLogo2BLANKLOGO copy 3.png'));
    } else if (randomInt <= 147) {
      _pathToNewItemFromChest = 'futuristicGameConsoleNoLogo2BLANKLOGO.png';

      /// silver console
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.console,
          path: 'futuristicGameConsoleNoLogo2BLANKLOGO.png'));
    } else if (randomInt <= 148) {
      _pathToNewItemFromChest =
          'futuristicGameConsoleNoLogo2BLANKLOGO copy.png';

      /// red console
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.console,
          path: 'futuristicGameConsoleNoLogo2BLANKLOGO copy.png'));
    } else if (randomInt <= 149) {
      _pathToNewItemFromChest =
          'futuristicGameConsoleNoLogo2BLANKLOGOBrightYellow2.png';

      /// yellow console
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.console,
          path: 'futuristicGameConsoleNoLogo2BLANKLOGOBrightYellow2.png'));
    } else if (randomInt <= 150) {
      _pathToNewItemFromChest = 'futuristicGameConsoleNoLogo2BLANKLOGOPurp.png';

      /// purple console
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.console,
          path: 'futuristicGameConsoleNoLogo2BLANKLOGOPurp.png'));
    } else if (randomInt <= 151) {
      _pathToNewItemFromChest = 'horseTransparent.gif';

      /// purple console
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.beast, path: 'horseTransparent.gif'));
    } else if (randomInt <= 161) {
      _pathToNewItemFromChest = 'xxDuctTapeKnife.gif';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.shank, path: 'xxDuctTapeKnife.gif'));
    } else if (randomInt <= 165) {
      _pathToNewItemFromChest = 'xxAxe.gif';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.shank, path: 'xxAxe.gif'));
    } else if (randomInt <= 171) {
      _pathToNewItemFromChest = 'xxBatNails.gif';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.shank, path: 'xxBatNails.gif'));
    } else if (randomInt <= 175) {
      _pathToNewItemFromChest = 'xxBrokenBottle.gif';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.shank, path: 'xxBrokenBottle.gif'));
    } else if (randomInt <= 180) {
      _pathToNewItemFromChest = 'xxCleaver.gif';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.shank, path: 'xxCleaver.gif'));
    } else if (randomInt <= 185) {
      _pathToNewItemFromChest = 'xxHammer.gif';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.shank, path: 'xxHammer.gif'));
    } else if (randomInt <= 190) {
      _pathToNewItemFromChest = 'xxKnuckleBlade.gif';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.shank, path: 'xxKnuckleBlade.gif'));
    } else if (randomInt <= 195) {
      _pathToNewItemFromChest = 'xxNinjaStar.gif';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.shank, path: 'xxNinjaStar.gif'));
    } else if (randomInt <= 206) {
      _pathToNewItemFromChest = 'xxRedKnucks.gif';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.shank, path: 'xxRedKnucks.gif'));
    } else if (randomInt <= 210) {
      _pathToNewItemFromChest = 'zzBaby.GIF';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.beast, path: 'zzBaby.GIF'));
    } else if (randomInt <= 215) {
      _pathToNewItemFromChest = 'zzBaby2.gif';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.beast, path: 'zzBaby2.gif'));
    } else if (randomInt <= 220) {
      _pathToNewItemFromChest = 'zzChicken.GIF';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.beast, path: 'zzChicken.GIF'));
    } else if (randomInt <= 225) {
      _pathToNewItemFromChest = 'zzChickenBlood2.gif';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.beast, path: 'zzChickenBlood2.gif'));
    } else if (randomInt <= 230) {
      _pathToNewItemFromChest = 'zzCockatoo2.gif';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.beast, path: 'zzCockatoo2.gif'));
    } else if (randomInt <= 235) {
      _pathToNewItemFromChest = 'zzDevil.gif';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.beast, path: 'zzDevil.gif'));
    } else if (randomInt <= 240) {
      _pathToNewItemFromChest = 'zzDog1.gif';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.beast, path: 'zzDog1.gif'));
    } else if (randomInt <= 245) {
      _pathToNewItemFromChest = 'zzDuck.gif';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.beast, path: 'zzDuck.gif'));
    } else if (randomInt <= 250) {
      _pathToNewItemFromChest = 'zzFish2.GIF';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.beast, path: 'zzFish2.GIF'));
    } else if (randomInt <= 255) {
      _pathToNewItemFromChest = 'zzGator2.gif';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.beast, path: 'zzGator2.gif'));
    } else if (randomInt <= 260) {
      _pathToNewItemFromChest = 'zzGhost1.gif';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.beast, path: 'zzGhost1.gif'));
    } else if (randomInt <= 265) {
      _pathToNewItemFromChest = 'zzShark.GIF';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.beast, path: 'zzShark.GIF'));
    }
    // } else if (randomInt <= 270) {
    //   _pathToNewItemFromChest = 'hhRocket1.gif';
    //   notifyListeners();
    //   availableGats.add(PremiumGatsAndGrenades(
    //       type: PremiumContentType.rocket, path: 'hhRocket1.gif'));
    // } else if (randomInt <= 275) {
    //   _pathToNewItemFromChest = 'hhRocket2.gif';
    //   notifyListeners();
    //   availableGats.add(PremiumGatsAndGrenades(
    //       type: PremiumContentType.rocket, path: 'hhRocket2.gif'));
    // } else if (randomInt <= 280) {
    //   _pathToNewItemFromChest = 'hhRocket3.gif';
    //   notifyListeners();
    //   availableGats.add(PremiumGatsAndGrenades(
    //       type: PremiumContentType.rocket, path: 'hhRocket3.gif'));
    // } else if (randomInt <= 285) {
    //   _pathToNewItemFromChest = 'hhRocket4.gif';
    //   notifyListeners();
    //   availableGats.add(PremiumGatsAndGrenades(
    //       type: PremiumContentType.rocket, path: 'hhRocket4.gif'));
    // } else if (randomInt <= 290) {
    //   _pathToNewItemFromChest = 'hhRocket5.gif';
    //   notifyListeners();
    //   availableGats.add(PremiumGatsAndGrenades(
    //       type: PremiumContentType.rocket, path: 'hhRocket5.gif'));
    // } else if (randomInt <= 295) {
    //   _pathToNewItemFromChest = 'hhRocket6.gif';
    //   notifyListeners();
    //   availableGats.add(PremiumGatsAndGrenades(
    //       type: PremiumContentType.rocket, path: 'hhRocket6.gif'));
    // }
    else if (randomInt <= 270) {
      _pathToNewItemFromChest = 'hhRocket7.gif';
      notifyListeners();
      availableGats.add(PremiumGatsAndGrenades(
          type: PremiumContentType.rocket, path: 'hhRocket7.gif'));
    }

    setLastPrizeTypeForCongratsMessage();
  }

  List<Widget> get winnables => _winnables;

  List<Widget> _winnables = [
    kThingDraco,
    kThingBrightPistol,
    kThingCaroleLynn,
    kThingGrenadeLauncher,
    kThingKeltechPistol,
    kThingOutlineRay,
    kThingPirate,
    kThingShortM4,
    kBlueGrenade,
    kGrenade,
    kSharkBomb,
    kSciFiGrenade1,
    kSciFiGrenade2,
    kIcedGrenade,
    kCherryBomb1,
    kCherryBomb2,
    kThingCapPishPish,
    kThingDarrenger,
    kThingGoldDeagle,
    kThingSBR,
    kThingToyM4,
    kThingBlock9,
    kAK47,
    kCrazyDraco,
    kM203,
    kPurpleM4,
    kRedM4,
    kDoubleBarrel,
    kSniperRifle,
    WinnableBeastsWidgets(path: 'horseTransparent.gif'),

    /// silver
    WinnableConsoleWidgets(path: 'futuristicGameConsoleNoLogo2BLANKLOGO.png'),
    WinnableConsoleWidgets(
        path: 'futuristicGameConsoleNoLogo2BLANKLOGO copy.png'),

    /// black
    WinnableConsoleWidgets(
        path: 'futuristicGameConsoleNoLogo2BLANKLOGO copy 3.png'),
    WinnableConsoleWidgets(
        path: 'futuristicGameConsoleNoLogo2BLANKLOGOBrightYellow2.png'),
    WinnableConsoleWidgets(
        path: 'futuristicGameConsoleNoLogo2BLANKLOGOPurp.png'),
    WinnableShankWidgets(path: 'xxDuctTapeKnife.gif'),
    WinnableShankWidgets(path: 'xxBatNails.gif'),
    WinnableShankWidgets(path: 'xxBrokenBottle.gif'),
    WinnableShankWidgets(path: 'xxCleaver.gif'),
    WinnableShankWidgets(path: 'xxHammer.gif'),
    WinnableShankWidgets(path: 'xxKnuckleBlade.gif'),
    WinnableShankWidgets(path: 'xxNinjaStar.gif'),
    WinnableShankWidgets(path: 'xxRedKnucks.gif'),
    WinnableBeastsWidgets(path: 'zzBaby.GIF'),
    WinnableBeastsWidgets(path: 'zzBaby2.gif'),
    WinnableBeastsWidgets(path: 'zzChicken.GIF'),
    WinnableBeastsWidgets(path: 'zzChickenBlood2.gif'),
    WinnableBeastsWidgets(path: 'zzCockatoo2.gif'),
    WinnableBeastsWidgets(path: 'zzDevil.gif'),
    WinnableBeastsWidgets(path: 'zzDog1.gif'),
    WinnableBeastsWidgets(path: 'zzDuck.gif'),
    WinnableBeastsWidgets(path: 'zzFish2.GIF'),
    WinnableBeastsWidgets(path: 'zzGator2.gif'),
    WinnableBeastsWidgets(path: 'zzGhost1.gif'),

    WinnableBeastsWidgets(path: 'zzShark.GIF'),
    // WinnableRocketsWidgets(path: 'hhRocket1.gif'),
    // WinnableRocketsWidgets(path: 'hhRocket2.gif'),
    // WinnableRocketsWidgets(path: 'hhRocket3.gif'),
    // WinnableRocketsWidgets(path: 'hhRocket4.gif'),
    // WinnableRocketsWidgets(path: 'hhRocket5.gif'),
    // WinnableRocketsWidgets(path: 'hhRocket6.gif'),
    WinnableRocketsWidgets(path: 'hhRocket7.gif'),
  ];
}
