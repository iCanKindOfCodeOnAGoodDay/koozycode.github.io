import 'dart:async';
import 'dart:math';

import 'package:flappy_taco/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart';

import '../widgets/premium_gats.dart';

enum PremiumContentType {
  gat,
  grenade,
  beast,
  console,
  shank,
}

enum SelectedGatType {
  draco,
  caroleLynn,
  grenadeLauncher,
  keltechPistol,
  pirateMusket,
  brightOutlinedPistol,
  shortM4,
  tracedRayGun,
  block9,
  goldDeagle,
  darrenger,
  capPshPsh,
  toyM4,
  sBR,
}

enum SelectedTimeBomb {
  dynamite,
  icedGrenade,
  greenGrenade,
  blueGrenade,
  sharkBomb,
  sciFi1,
  sciFi2,
  cherryBomb1,
  cherryBomb2,
}

class PremiumContentProvider with ChangeNotifier {
  String _playersGatChoiceString = 'thingDarrenger.png';

  String get playersGatChoiceString => _playersGatChoiceString;

  String _playersGrenadeChoiceString = 'dynamite.png';
  String get playersGrenadeChoiceString => _playersGrenadeChoiceString;

  String _pathToNewItemFromChest = 'xThingKeltechPistol.png';

  String get pathToNewItemFromChest => _pathToNewItemFromChest;

  int _amountOfRubiesReadyToUse = 10;

  int get amountOfRubiesReadyToUse => _amountOfRubiesReadyToUse;

  String _pathToSelectedKnife = 'switchBladeBloody.gif';

  String get pathToSelectedKnife => _pathToSelectedKnife;

  void changeKnife(String knifePath) {
    _pathToSelectedKnife = knifePath;
    // _shouldHideTheLastPrize = true;
    _pathToChangeChestImageFromClosedToOpen = 'xClosedChest.gif';

    notifyListeners();
  }

  String _pathToSelectedBeast = 'octopus.png';

  String get pathToSelectedBeast => _pathToSelectedBeast;

  void changeBeast(String beastPath) {
    _pathToSelectedBeast = beastPath;
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
        type: PremiumContentType.gat, path: 'thingDarrenger.png'),
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
    randomInt = Random().nextInt(206);

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
    }
    setLastPrizeTypeForCongratsMessage();
  }

  /// add the most rare gat
  // for (var i = 0; i < availableGats.length - 1; i++) {
  //   if (availableGats[i].path != 'caroleLynnRayGun.gif') {
  //     availableGats.add(PremiumGats(type: PremiumContentType.gat,
  //       path: 'caroleLynnRayGun.gif',
  //       width: 90.0,
  //       height: 40.0,
  //     ));
  //   } else {
  //     print('you already owned that one!');
  //   }
  // }
}
