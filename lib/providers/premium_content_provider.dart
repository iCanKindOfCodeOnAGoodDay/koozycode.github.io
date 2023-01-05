import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart';

import '../widgets/premium_gats.dart';

enum SelectedGat {
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
  String _playersGatChoiceString = 'thingCapPishPish.png';

  String get playersGatChoiceString => _playersGatChoiceString;

  String _pathToNewItemFromChest = 'thingCapPishPish.png';

  String get pathToNewItemFromChest => _pathToNewItemFromChest;

  int _amountOfRubiesReadyToUse = 10;

  int get amountOfRubiesReadyToUse => _amountOfRubiesReadyToUse;

  List<PremiumGats> availableGats = [
    PremiumGats(path: 'thingToyM4.png', width: 90.0, height: 50.0),
    PremiumGats(path: 'thingToyM4.png', width: 90.0, height: 50.0),
    PremiumGats(path: 'thingDarrenger.png', width: 90.0, height: 50.0),
  ];

  void changeGat(String gatName) {
    _playersGatChoiceString = gatName;
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

  void openChestToGetRandomPrize() async {
    _shouldHideTheLastPrize = true;
    _pathToChangeChestImageFromClosedToOpen = 'xClosedChest.gif';
    notifyListeners();

    Timer(Duration(milliseconds: 1200), () {
      _shouldHideTheLastPrize = false;
      _pathToChangeChestImageFromClosedToOpen = 'xChestTransparent.gif';
      notifyListeners();

      for (var i = 0; i < 300; i++) {
        _heightOfNewItemForAnimationWhenOpeningChest = 00;
        _widthOfNewItemForAnimationWhenOpeningChest = 100;
        Timer(Duration(milliseconds: i * 4), () {
          _heightOfNewItemForAnimationWhenOpeningChest++;
          _widthOfNewItemForAnimationWhenOpeningChest++;
          notifyListeners();
        });
      }
    });

    int randomInt = 0;
    randomInt = Random().nextInt(100);

    notifyListeners();
    Timer(Duration(milliseconds: 1200), () {
      _pathToChangeChestImageFromClosedToOpen = 'xOpenChest.gif';
      notifyListeners();
    });

    if (randomInt == 99) {
      /// add the most rare gat
      for (var i = 0; i < availableGats.length - 1; i++) {
        if (availableGats[i].path != 'caroleLynnRayGun.gif') {
          availableGats.add(PremiumGats(
            path: 'caroleLynnRayGun.gif',
            width: 90.0,
            height: 40.0,
          ));
        } else {
          print('you already owned that one!');
        }
      }
    }
  }
}
