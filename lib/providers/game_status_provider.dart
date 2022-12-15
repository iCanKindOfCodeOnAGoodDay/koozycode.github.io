import 'dart:async';

import 'package:flappy_taco/constants.dart';
import 'package:flappy_taco/widgets/building_widget.dart';
import 'package:flappy_taco/widgets/cannon_contact_effect_Columns.dart';
import 'package:flappy_taco/widgets/cannon_fire.dart';
import 'package:flappy_taco/widgets/cannon_fire_large_widget.dart';
import 'package:flappy_taco/widgets/hell_fire_columns.dart';
import 'package:flappy_taco/widgets/upside_down_building_widget.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import '../models/sound_model.dart';
import '../widgets/cannon_ammunition_widget.dart';

enum CannonType {
  orange,
  blue,
  yellow,
  purple,
  flashing,
  white,
  black,
}

enum AmmoType {
  orange,
  blue,
  yellow,
  purple,
  flashing,
  white,
  black,
}

enum LastGamePlayButton {
  climb,
  jump,
  dive,
}

SoundModel soundModel = SoundModel();

class GameStatusProvider with ChangeNotifier {
  /// start the taco position at 6 near center
  int _handPosition = 5;

  int get handPosition => _handPosition;

  LastGamePlayButton _lastCommand = LastGamePlayButton.climb;

  LastGamePlayButton get lastCommand => _lastCommand;

  /// position 10 and 11 are not accessible for the hand
  /// 1, 2, 3 , 4, 5, 6, 7, 8, 9 , 10

  AmmoType _currentAmmunition = AmmoType.orange;

  AmmoType get currentAmmunition => _currentAmmunition;

  void resetGame() {
    soundModel.playOtherSounds('arcadeStartUp.wav');
    resetHellFireColumns();
    resetHellFireContactLocations();
    reloadHellFire();
    _currentAmmunition = AmmoType.orange;
    _currentCannon = CannonType.orange;
    _cannons = [kLargeHellfireOrange];
    // _shouldNotTellHellFireToCancelTimer = true;
    hellFirePowerUp();
    // moveHellFire();
    nukeList = [];
    // flames = [];
    extraLives = [];
    redGems = [];
    colorGems = [];
    // _gameSpeed = 200;
    _progressMessage = '';
    _handPosition = 5;
    _score = 0;
    _crashed = false;
    resetBuildings();
    notifyListeners();
  }

  void resetBuildings() {
    buildings = [
      BuildingWidget(
        buildingHeight: 0,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 0,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 0,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 0,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 0,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 0,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 0,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 0,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 0,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 0,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 0,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 0,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 0,
        powerUpPosition: 0,
      ),
    ];
  }

  // void moveHellFireContact() {
  //   hellFireColumns.removeAt(hellFireColumns.length - 1);
  //
  //   hellFireColumns.insert(
  //       0,
  //       HellFirePowerUpColumns(
  //         firePosition: -1,
  //       ));
  //
  //   notifyListeners();
  // }

  bool _isClimbing = false;

  bool get isClimbing => _isClimbing;

  void handClimb() {
    fireHellFire();
    if (_isPaused == false) {
      /// when user taps, let the taco climb
      if (_handPosition < 10) {
        if (_crashed == false) {
          soundModel.playOtherSounds('jumpSwipe.wav');
          soundModel.playOtherSoundsTwo('splatDeath.wav');
          soundModel.playTapSound();

          // soundModel.playOtherSounds('wingsNewTwo.wav');

          _isClimbing = true;
          _lastCommand = LastGamePlayButton.climb;

          /// let the user jump through to pickup powerups
          _handPosition++;
          _handPosition++;
          // _handPosition = _handPosition + 2;
          // gameOver();

          notifyListeners();
        }
      }
    }

    gameOver();
  }

  void handJump() {
    if (_isPaused == false) {
      soundModel.playTapSound();
      soundModel.playOtherSounds('wingsNewTwo.wav');
      soundModel.playOtherSounds('sciFiChargeQuick.wav');
      soundModel.playOtherSoundsTwo('bugSquash.wav');

      /// when user taps, let the taco climb
      if (_handPosition <= 7) {
        if (_crashed == false) {
          _lastCommand = LastGamePlayButton.jump;
          _isClimbing = true;
          _handPosition++;
          _handPosition++;
          _handPosition++;
          _handPosition++;
          // _handPosition = _handPosition + 4;
          // gameOver();

          notifyListeners();
        }
      } else {
        if (_crashed == false) {
          _isClimbing = true;
          _handPosition++;
          _handPosition++;
          _handPosition++;
          _handPosition++;
          if (_handPosition > 11) {
            _handPosition = 11;
          }
          // _handPosition = 11;
          notifyListeners();
        }
      }
      gameOver();
    }
  }

  void handDive() {
    if (_isPaused == false) {
      // soundModel.playCreatureSound();
      soundModel.playOtherSounds('sciFiDive.wav');
      soundModel.playOtherSoundsTwo('sciFiChargeQuick.wav');

      /// when user taps, let the taco climb
      if (_handPosition <= 4) {
        if (_crashed == false) {
          _lastCommand = LastGamePlayButton.dive;
          _isClimbing = false;
          // _handPosition = 1;
          _handPosition--;
          _handPosition--;
          _handPosition--;
          if (_handPosition < 1) {
            _handPosition = 1;
          }
          // gameOver();
          notifyListeners();
        }
      } else {
        if (_crashed == false) {
          _isClimbing = false;
          _handPosition--;
          _handPosition--;
          _handPosition--;
          _handPosition--;

          // _handPosition = _handPosition - 4;
          notifyListeners();
        }
      }
      gameOver();
    }
  }

  String _progressMessage = '';

  String get progressMessage => _progressMessage;

  void updateProgressMessage() {
    if (_score > 20 && _score < 25) {
      _progressMessage = 'wow!';
      notifyListeners();
    } else if (_score > 25 && _score < 49) {
      _progressMessage = '';
      notifyListeners();
    } else if (_score > 50 && _score < 55) {
      _progressMessage = 'super!';
      notifyListeners();
    } else if (_score > 55 && _score < 74) {
      _progressMessage = '';
      notifyListeners();
    } else if (_score > 75 && _score < 80) {
      _progressMessage = 'WHOA!!';
      notifyListeners();
    } else if (_score > 80 && _score < 100) {
      _progressMessage = '';
      notifyListeners();
    } else if (_score > 100 && _score < 105) {
      _progressMessage = 'YAAAA!!';
      notifyListeners();
    } else if (_score > 105) {
      _progressMessage = '';
      notifyListeners();
    }
  }

  bool _crashed = true;

  bool get crashed => _crashed;

  void handFall() {
    var timer = Timer.periodic(Duration(milliseconds: 200), (timer) {
      gameOver();
      // soundModel.playFallingSound('wingsNewOne.wav');
      // soundModel.playTapSound();

      print(_handPosition);
      // notifyListeners();
      if (_crashed == false) {
        if (_isPaused == false) {
          if (_handPosition >= 2) {
            /// call game over to check to see if game over should happen
            /// if not this function will be called again
            // gameOver();

            _handPosition--;
            _isClimbing = false;
            notifyListeners();
          }
          // timer.cancel();
        }
      } else {
        // gameOver();

        /// if game over happens, then _crashed will be true
        timer.cancel();
        // pauseGame();
        // notifyListeners();
        print('canceling taco fall timer');
      }
    });
    // notifyListeners();
  }

  /// all timers can be cancled by timer.cancel();
  /// check if game over is true and if it is the timers will cancel individually
  /// to reset the state of the app

  // int _crashedPosition = 0;

  //
  // void updateToCrashedPosition() {
  //   _handPosition = _crashedPosition;
  //   notifyListeners();
  // }

  bool _userCantDie = false;

  void tinyAmountOfTimeForInvinsibility() {
    Future.delayed(Duration(milliseconds: 1200), () {
      _userCantDie = false;
      notifyListeners();
    });
  }

  void gameOver() {
    int obstacleHeight = buildings[0].buildingHeight;
    // _hellFireIsActive = false;
    if (_userCantDie == false) {
      if (obstacleHeight <= 5) {
        if (_handPosition <= obstacleHeight + 1) {
          if (extraLives.isNotEmpty == true) {
            soundModel.playOtherSounds('femaleDeath.wav');
            _userCantDie = true;
            tinyAmountOfTimeForInvinsibility();
            extraLives.removeAt(extraLives.length - 1);
            notifyListeners();
          } else if (extraLives.isEmpty == true) {
            soundModel.playOtherSounds('manDeath.wav');
            soundModel.playOtherSounds('splat.wav');
            soundModel.playOtherSounds('deathCallsForMe.wav');
            soundModel.playOtherSounds('fireworks.wav');
            soundModel.playOtherSoundsTwo('bulletShot.wav');

            _crashed = true;
            _isClimbing = true;
            print('craashed = $_crashed');
            print('game over bottom buildling');
            print(obstacleHeight);
            print(_handPosition);
            print('now updating the UI');
            notifyListeners();
          }
        }
      } else if (obstacleHeight >= 6) {
        print('obstance hight from top $obstacleHeight');
        if (_handPosition >= obstacleHeight - 1) {
          if (extraLives.isNotEmpty == true) {
            soundModel.playOtherSounds('femaleDeath.wav');

            _userCantDie = true;
            tinyAmountOfTimeForInvinsibility();
            extraLives.removeAt(extraLives.length - 1);
            notifyListeners();
          }

          /// one wiggle room for top buildlings
          else if (extraLives.isEmpty == true) {
            _crashed = true;
            _isClimbing = true;
            soundModel.playOtherSounds('manDeath.wav');
            soundModel.playOtherSounds('splat.wav');
            soundModel.playOtherSounds('deathCallsForMe.wav');
            soundModel.playOtherSounds('fireworks.wav');
            soundModel.playOtherSoundsTwo('bulletShot.wav');

            print('craashed = $_crashed');
            print('game over top buildling');
            print('buildling height: $obstacleHeight');
            print('taco position ${_handPosition}');

            print('now updating the UI');
            notifyListeners();
          }
        }
      }
    }
  }

  List<BuildingWidget> buildings = [
    /// 5 empty buildings

    BuildingWidget(
      buildingHeight: 0,
      powerUpPosition: 0,
    ),
    BuildingWidget(
      buildingHeight: 0,
      powerUpPosition: 0,
    ),
    BuildingWidget(
      buildingHeight: 0,
      powerUpPosition: 0,
    ),
    BuildingWidget(
      buildingHeight: 0,
      powerUpPosition: 0,
    ),
    BuildingWidget(
      buildingHeight: 0,
      powerUpPosition: 0,
    ),
    BuildingWidget(
      buildingHeight: 0,
      powerUpPosition: 0,
    ),
    BuildingWidget(
      buildingHeight: 0,
      powerUpPosition: 0,
    ),
    BuildingWidget(
      buildingHeight: 0,
      powerUpPosition: 0,
    ),
    BuildingWidget(
      buildingHeight: 0,
      powerUpPosition: 0,
    ),
    BuildingWidget(
      buildingHeight: 0,
      powerUpPosition: 0,
    ),
    BuildingWidget(
      buildingHeight: 0,
      powerUpPosition: 0,
    ),
    BuildingWidget(
      buildingHeight: 0,
      powerUpPosition: 0,
    ),
    BuildingWidget(
      buildingHeight: 0,
      powerUpPosition: 0,
    ),
  ];

  int buildingHeight = 1;

  int chooseRandomHeight() {
    /// creates and returns a random int between 1-5
    return Random().nextInt(8) + 2;
  }

  BuildingWidget theLast = BuildingWidget(
    buildingHeight: 0,
    powerUpPosition: 0,
  );
  BuildingWidget secondToLast = BuildingWidget(
    buildingHeight: 0,
    powerUpPosition: 0,
  );

  void createBuilding() {
    // BuildingWidget theLast = buildings[0];
    if (_crashed == false) {
      theLast = buildings[0];
      buildings.removeAt(0);
      buildings.insert(
          buildings.length,
          BuildingWidget(
            buildingHeight: chooseRandomHeight(),
            powerUpPosition: 0,
          ));

      notifyListeners();
      gameOver();
    }
  }

  void createEmptyBuildingSpace() {
    gameOver();

    /// take the last created building & move it's position to the left
    buildings.removeAt(0);
    randomGemPosition();

    /// create a buildling
    /// add it to the list of buildlings
    /// at the last index of buildling list
    buildings.insert(
        buildings.length,
        BuildingWidget(
          /// by setting powerup position to 7, there should always be a powerup created
          powerUpPosition: _gemPosition,
          buildingHeight: -5,
        ));
    notifyListeners();
  }

  int _gemPosition = 0;

  String _trackGemType = 'red';

  List<Widget> redGems = [];

  List<Widget> colorGems = [];

  List<Widget> extraLives = [];

  List<Widget> flames = [
    // CannonAmmunition(),
    // CannonAmmunition(),
    // CannonAmmunition(),
    // CannonAmmunition(),
    // CannonAmmunition(),
    // CannonAmmunition(),
    CannonAmmunition(),
    CannonAmmunition(),
    CannonAmmunition(),
    CannonAmmunition(),
    CannonAmmunition(),
    CannonAmmunition(),
    kblankIcon,
  ];

  List<Widget> flamesSecond = [
    CannonAmmunition(),
    CannonAmmunition(),
    CannonAmmunition(),
    CannonAmmunition(),
    CannonAmmunition(),
    CannonAmmunition(),
    CannonAmmunition(),
    CannonAmmunition(),
    CannonAmmunition(),
    CannonAmmunition(),
    CannonAmmunition(),
    CannonAmmunition(),
    kblankIcon,
  ];

  List<Widget> nukeList = [];

  /// set crashed = true if the user crashed into a knife without any knife defense
  /// if the did have a knife, decrease the value
  ///
  ///

  bool _shouldDisplayDoublePointsEffects = false;

  bool get shouldDisplayDoublePointsEffects =>
      _shouldDisplayDoublePointsEffects;

  void fireDoublePointsEffects() {
    _score = _score + 50;
    _shouldDisplayDoublePointsEffects = true;
    notifyListeners();
    Future.delayed(Duration(milliseconds: 1200), () {
      _shouldDisplayDoublePointsEffects = false;
      notifyListeners();
    });
  }

  bool _shouldDisplayExplosion1 = false;

  bool get shouldDisplayExplosion1 => _shouldDisplayExplosion1;

  void fireExplosion1() {
    // _score = _score + 50;
    _shouldDisplayExplosion1 = true;
    notifyListeners();
    Future.delayed(Duration(milliseconds: 1200), () {
      _shouldDisplayExplosion1 = false;
      notifyListeners();
    });
  }

  bool _shouldDisplayExplosion2 = false;

  bool get shouldDisplayExplosion2 => _shouldDisplayExplosion2;

  void fireExplosion2() {
    // _score = _score + 50;
    _shouldDisplayExplosion2 = true;
    notifyListeners();
    Future.delayed(Duration(milliseconds: 1200), () {
      _shouldDisplayExplosion2 = false;
      notifyListeners();
    });
  }

  bool _shouldDisplayBloodSplatQuick = false;

  bool get shouldDisplayBloodSplatQuick => _shouldDisplayBloodSplatQuick;

  void fireBloodSplatQuick() {
    // _score = _score + 50;
    _shouldDisplayBloodSplatQuick = true;
    notifyListeners();
    Future.delayed(Duration(milliseconds: 1200), () {
      _shouldDisplayBloodSplatQuick = false;
      notifyListeners();
    });
  }

  bool _shouldDisplayJustPickedUpCannon = false;

  bool get shouldDisplayJustPickedUpCannon => _shouldDisplayJustPickedUpCannon;

  void fireJustPickedUpCannon() {
    // _score = _score + 50;
    _shouldDisplayJustPickedUpCannon = true;
    notifyListeners();
    Future.delayed(Duration(milliseconds: 1200), () {
      _shouldDisplayJustPickedUpCannon = false;
      notifyListeners();
    });
  }

  bool _shouldShowCoinWinEffect = false;

  bool get shouldShowCoinWinEffect => _shouldShowCoinWinEffect;

  void fireCoinWinEffect() {
    // _score = _score + 10;
    _shouldShowCoinWinEffect = true;
    notifyListeners();
    Future.delayed(Duration(milliseconds: 1200), () {
      _shouldShowCoinWinEffect = false;
      notifyListeners();
    });
  }

  void nuclearExplosionOnScreen() {
    soundModel.playOtherSounds('sciFiBitExplosion.wav');
    soundModel.playOtherSounds('whistle.wav');
    soundModel.playOtherSounds('sizzlePop.wav');
    soundModel.playOtherSounds('popDebris.wav');

    fireDoublePointsEffects();
    fireExplosion1();

    nukeList.removeAt(nukeList.length - 1);
    buildings = [];
    buildings = [
      BuildingWidget(
        buildingHeight: 20,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 20,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 20,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 20,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 20,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 20,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 20,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 20,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 20,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 20,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 20,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 20,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 20,
        powerUpPosition: 0,
      ),
    ];
    notifyListeners();
  }

  int _ammunition = 20;
  int get ammunition => _ammunition;

  bool _fullyLoaded = true;

  bool get fullyLoaded => _fullyLoaded;

  void switchCannon() {
    _fullyLoaded = !_fullyLoaded;
    notifyListeners();
  }

  bool _showSkullBackground = false;

  bool get showSkullBackground => _showSkullBackground;

  void turnOnAndOffSkullBackground() {
    _showSkullBackground = true;
    notifyListeners();
    Future.delayed(Duration(milliseconds: 1200), () {
      _showSkullBackground = false;
      notifyListeners();
    });
  }

  void checkForBadPowerUps() {
    int _gemLocationAtIndexZero = buildings[0].powerUpPosition;

    if (_handPosition - 1 == _gemLocationAtIndexZero ||
        _handPosition == _gemLocationAtIndexZero) {
      if (_gemLocationAtIndexZero == 4 || _gemLocationAtIndexZero == 7) {
        if (redGems.isEmpty && extraLives.isEmpty) {
          fireBloodSplatQuick();
          soundModel.playOtherSounds('jumpScare.wav');

          print('user got stabbed');
          _crashed = true;
          pauseGame();
          notifyListeners();
        } else if (redGems.isNotEmpty) {
          fireBloodSplatQuick();

          redGems.removeAt(redGems.length - 1);
          print('bandaid stab protection');
          notifyListeners();
        } else if (extraLives.isNotEmpty) {
          fireBloodSplatQuick();

          extraLives.removeAt(extraLives.length - 1);
          print('extra lives stab protection');

          notifyListeners();
        }
      } else if (_gemLocationAtIndexZero == 5) {
        soundModel.playOtherSounds('rampage.wav');
        turnOnAndOffSkullBackground();
        fireBloodSplatQuick();

        fireDoublePointsEffects();

        /// set string value for background image
        /// or, set a bool to true, then back to false on a delay
      }
    }
  }

  List<Widget> _cannons = [CannonFireLarge()];

  List<Widget> get cannons => _cannons;

  void unloadHellFire() {
    flames = [];
    flamesSecond = [];
    notifyListeners();
  }

  void reloadHellFire() {
    soundModel.playReloadSound();
    soundModel.playOtherSounds('sciFiReload.wav');
    soundModel.playOtherSoundsTwo('shotgunReload.wav');

    _roundsInMagazine = 18;
    flames = [
      CannonAmmunition(),
      CannonAmmunition(),
      CannonAmmunition(),
      CannonAmmunition(),
      CannonAmmunition(),
      CannonAmmunition(),
      kblankIcon,
    ];
    flamesSecond = [
      CannonAmmunition(),
      CannonAmmunition(),
      CannonAmmunition(),
      CannonAmmunition(),
      CannonAmmunition(),
      CannonAmmunition(),
      CannonAmmunition(),
      CannonAmmunition(),
      CannonAmmunition(),
      CannonAmmunition(),
      CannonAmmunition(),
      CannonAmmunition(),
      kblankIcon,
    ];
    _fullyLoaded = true;
    notifyListeners();
  }

  bool _shouldGetDoublePoints = false;

  // void doublePoints() {
  //   _score = _score + 20;
  //   _shouldDisplayDoublePointsEffects = true;
  //   Future.delayed(Duration(milliseconds: 400), () {
  //     _shouldDisplayDoublePointsEffects = false;
  //   });
  // }

  void contactWithPowerUpChecker() {
    int _gemLocationAtIndexZero = buildings[0].powerUpPosition;

    if (_handPosition == _gemLocationAtIndexZero ||
        _handPosition + 1 == _gemLocationAtIndexZero ||
        _handPosition - 1 == _gemLocationAtIndexZero) {
      if (_gemLocationAtIndexZero == 3 || _gemLocationAtIndexZero == 2) {
        fireJustPickedUpCannon();
        soundModel.playCannonUpgradeSound();

        ///hell fire cannon
        if (_currentCannon == CannonType.orange) {
          _currentCannon = CannonType.yellow;
          _cannons = [kLargeHellfireOrange];
          _cannons.add(kLargeHellfireYellow);
          _currentAmmunition = AmmoType.yellow;

          /// adds two cannons
          notifyListeners();
        } else if (_currentCannon == CannonType.yellow) {
          _currentCannon = CannonType.blue;
          _cannons.add(kLargeHellfireBlue);
          _currentAmmunition = AmmoType.blue;

          notifyListeners();
        } else if (_currentCannon == CannonType.blue) {
          _currentCannon = CannonType.purple;
          _cannons.add(kLargeHellfirePurple);
          _currentAmmunition = AmmoType.purple;

          notifyListeners();
        } else if (_currentCannon == CannonType.purple) {
          _currentCannon = CannonType.flashing;
          _cannons.add(kLargeHellfireFlashing);
          _currentAmmunition = AmmoType.flashing;

          notifyListeners();
        } else if (_currentCannon == CannonType.flashing) {
          _currentCannon = CannonType.black;
          _cannons.add(kLargeHellfireBlack);
          _currentAmmunition = AmmoType.black;

          notifyListeners();
        } else if (_currentCannon == CannonType.black) {
          _currentCannon = CannonType.white;
          _cannons.add(kLargeHellfireWhite);
          _currentAmmunition = AmmoType.white;

          notifyListeners();
        }
        // flames.add(CannonAmmunition());
        // notifyListeners();
        print('user caught a FLAME');
      } else if (_gemLocationAtIndexZero == 9) {
        fireCoinWinEffect();
        soundModel.playOtherSounds('arcadeScore.wav');

        /// give the user an extra life
        extraLives.add(kExtraLife);
        notifyListeners();

        print('user got extra life');
      } else if (_gemLocationAtIndexZero == 10 ||
          _gemLocationAtIndexZero == 6) {
        soundModel.playOtherSounds('arcadeScore.wav');

        fireCoinWinEffect();

        redGems.add(kRedGem);
        notifyListeners();

        /// increase users red gem count
        print('user made contact with red gem');
      } else if (_gemLocationAtIndexZero == 1) {
        ///empty buildings
        fireDoublePointsEffects();
        soundModel.playOtherSounds('sciFiBitExplosion.wav');
        soundModel.playOtherSounds('sciFiBitExplosion.wav');
        soundModel.playOtherSounds('debrisShatter.wav');

        activateShield();
        fireExplosion2();
        print('user caught a flashing gem');
      } else if (_gemLocationAtIndexZero == 8) {
        soundModel.playOtherSounds('sizzlePop.wav');

        ///empty buildings
        nukeList.add(kTimeBombLarge);
        print('user caught a nuke');
      }
    }
  }

  // bool _shieldIsActive = false;
  //
  // bool get shieldIsActive => _shieldIsActive;

  void randomGemPosition() {
    _gemPosition = Random().nextInt(100);
    notifyListeners();
    if (_gemPosition == 4 || _gemPosition == 7) {
      _trackGemType = 'knife'.toUpperCase();
      print('gem type $_trackGemType');
      notifyListeners();
    } else if (_gemPosition == 10 || _gemPosition == 2) {
      _trackGemType = 'red'.toUpperCase();
      notifyListeners();
      print('gem type $_trackGemType');
    } else if (_gemPosition == 1 || _gemPosition == 11) {
      _trackGemType = 'color'.toUpperCase();
      print('gem type $_trackGemType');
      notifyListeners();
    } else if (_gemPosition == 3) {
      _trackGemType = 'fire'.toUpperCase();
      print('gem type $_trackGemType');
      notifyListeners();
    }
    notifyListeners();
  }

  void activateShield() {
    buildings = [];
    notifyListeners();

    /// deploy the shield
    buildings = [
      /// 5 empty buildings

      BuildingWidget(
        buildingHeight: 21,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 21,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 21,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 21,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 21,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 21,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 21,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 21,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 21,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 21,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 21,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 21,
        powerUpPosition: 0,
      ),
      BuildingWidget(
        buildingHeight: 21,
        powerUpPosition: 0,
      ),
    ];
    notifyListeners();
  }

  bool _isPaused = true;

  bool get isPaused => _isPaused;

  void pauseGame() {
    _isPaused = true;
    notifyListeners();
  }

  void resumeGame() {
    _isPaused = false;
    notifyListeners();
  }

  void start() {
    _isPaused = false;
    startGame();

    notifyListeners();
  }

  int buildingSpace = 0;

  bool shouldMakeUpsideDownBuilding = false;

  int _score = 0;

  int get score => _score;

  void resetScore() {
    _score = 0;
    notifyListeners();
  }

  int _gameSpeed = 150;

  /// game speed is not going faster
  /// because the timer needs to be canceled, and a new timer created which moves faster

  void startGame() {
    var timer = Timer.periodic(Duration(milliseconds: 150), (timer) {
      if (_crashed == false) {
        /// make game speed up as you play
        // _gameSpeed--;
        // print('game spped $_gameSpeed');
        updateProgressMessage();
        if (_isPaused == false) {
          _score++;

          if (buildingSpace >= 3) {
            createBuilding();
            contactWithPowerUpChecker();
            checkForBadPowerUps();
            // contactWithPowerUpCheckerIndex1();
            buildingSpace = 0;
            // shouldMakeUpsideDownBuilding = true;

            // else {
            //   // createUpsideDownBuilding();
            //   buildingSpace = 0;
            //   shouldMakeUpsideDownBuilding = false;
            // }
          } else {
            buildingSpace++;

            createEmptyBuildingSpace();
            contactWithPowerUpChecker();
            checkForBadPowerUps();
            // contactWithPowerUpCheckerIndex1();

            notifyListeners();
          }
        }
      } else {
        /// the issue with only canceling the timer here
        /// is that if this function is not called, before reset
        /// then we'll get duplicate game speed timers, multiplying game speed to
        /// crazy fast unplayable speed
        /// and this is probably why at times
        /// the game play is very fast, and the
        /// hand becomes invinsible
        timer.cancel();
        print('canceling building creation timer');
      }
    });
    notifyListeners();
  }

  List<HellFirePowerUpColumns> hellFireColumns = [
    HellFirePowerUpColumns(firePosition: -1),
    HellFirePowerUpColumns(firePosition: -1),
    HellFirePowerUpColumns(firePosition: -1),
    HellFirePowerUpColumns(firePosition: -1),
    HellFirePowerUpColumns(firePosition: -1),
    HellFirePowerUpColumns(firePosition: -1),
    HellFirePowerUpColumns(firePosition: -1),
    HellFirePowerUpColumns(firePosition: -1),
    HellFirePowerUpColumns(firePosition: -1),
    HellFirePowerUpColumns(firePosition: -1),
    HellFirePowerUpColumns(firePosition: -1),
    HellFirePowerUpColumns(firePosition: -1),
    HellFirePowerUpColumns(firePosition: -1),
  ];

  void resetHellFireColumns() {
    hellFireColumns = [
      HellFirePowerUpColumns(firePosition: -1),
      HellFirePowerUpColumns(firePosition: -1),
      HellFirePowerUpColumns(firePosition: -1),
      HellFirePowerUpColumns(firePosition: -1),
      HellFirePowerUpColumns(firePosition: -1),
      HellFirePowerUpColumns(firePosition: -1),
      HellFirePowerUpColumns(firePosition: -1),
      HellFirePowerUpColumns(firePosition: -1),
      HellFirePowerUpColumns(firePosition: -1),
      HellFirePowerUpColumns(firePosition: -1),
      HellFirePowerUpColumns(firePosition: -1),
      HellFirePowerUpColumns(firePosition: -1),
      HellFirePowerUpColumns(firePosition: -1),
    ];
    notifyListeners();
  }

  void moveHellFire() {
    hellFireColumns.removeAt(hellFireColumns.length - 1);

    hellFireColumns.insert(
        0,
        HellFirePowerUpColumns(
          firePosition: -1,
        ));

    notifyListeners();
  }

  CannonType _currentCannon = CannonType.orange;

  CannonType get currentCannon => _currentCannon;

  List<HellFireContactColumns> contactGrid = [
    HellFireContactColumns(potentialContactPosition: -1),
    HellFireContactColumns(potentialContactPosition: -1),
    HellFireContactColumns(potentialContactPosition: -1),
    HellFireContactColumns(potentialContactPosition: -1),
    HellFireContactColumns(potentialContactPosition: -1),
    HellFireContactColumns(potentialContactPosition: -1),
    HellFireContactColumns(potentialContactPosition: -1),
    HellFireContactColumns(potentialContactPosition: -1),
    HellFireContactColumns(potentialContactPosition: -1),
    HellFireContactColumns(potentialContactPosition: -1),
    HellFireContactColumns(potentialContactPosition: -1),
    HellFireContactColumns(potentialContactPosition: -1),
  ];

  // List<HellFireContactColumns> hellFireContactColumns = [];

  void resetHellFireContactLocations() {
    contactGrid = [
      HellFireContactColumns(potentialContactPosition: -1),
      HellFireContactColumns(potentialContactPosition: -1),
      HellFireContactColumns(potentialContactPosition: -1),
      HellFireContactColumns(potentialContactPosition: -1),
      HellFireContactColumns(potentialContactPosition: -1),
      HellFireContactColumns(potentialContactPosition: -1),
      HellFireContactColumns(potentialContactPosition: -1),
      HellFireContactColumns(potentialContactPosition: -1),
      HellFireContactColumns(potentialContactPosition: -1),
      HellFireContactColumns(potentialContactPosition: -1),
      HellFireContactColumns(potentialContactPosition: -1),
      HellFireContactColumns(potentialContactPosition: -1),
    ];
    notifyListeners();
  }

  int _comboHits = 0;

  int get comboHits => _comboHits;

  ///this funnction should determine contact points and fire animations at the correct contact point
  ///with 1/50th the amounth of code or so
  ///display contactGrid as a stack in from of the game play areas
  void contactFiveOrLess() {
    for (var i = 0; i < 11; i++) {
      if (buildings[i].buildingHeight <= 5) {
        if (buildings[i].buildingHeight >= _handPosition &&
            buildings[i].buildingHeight <= 12 &&
            buildings[i].buildingHeight >= 1) {
          /// then contact has been made
          handleComboHitsMessageAndHoldTripleHit();

          // _comboHits++;
          // if (_comboHits >= 3) {
          //   fireDoublePointsEffects();
          // }
          // resetHellFireContactLocations();
          contactGrid.removeAt(i);
          contactGrid.insert(i,
              HellFireContactColumns(potentialContactPosition: _handPosition));

          /// add a animation when the gunshot hits a target
          /// at the location of contact
          notifyListeners();
          Future.delayed(Duration(milliseconds: 400), () {
            resetHellFireContactLocations();
            contactGrid.removeAt(i);

            /// remove the animation effect quickly
            contactGrid.insert(
                i, HellFireContactColumns(potentialContactPosition: 21));
            pointsForHittingPerCannonType();

            notifyListeners();

            /// 21 adds a blank column
          });
        }
      }
    }
  }

  void pointsForHittingPerCannonType() {
    if (_crashed == false) {
      if (_isPaused == false) {
        if (_currentCannon == CannonType.orange) {
          if (_shouldDisplayDoublePointsEffects == false) {
            _score = _score + 3;
          } else {
            _score = _score + 6;
          }
        } else if (_currentCannon == CannonType.yellow) {
          if (_shouldDisplayDoublePointsEffects == false) {
            _score = _score + 7;
          } else {
            _score = _score + 14;
          }
        } else if (_currentCannon == CannonType.blue) {
          if (_shouldDisplayDoublePointsEffects == false) {
            _score = _score + 12;
          } else {
            _score = _score + 24;
          }
        } else if (_currentCannon == CannonType.purple) {
          if (_shouldDisplayDoublePointsEffects == false) {
            _score = _score + 18;
          } else {
            _score = _score + 36;
          }
        } else if (_currentCannon == CannonType.flashing) {
          if (_shouldDisplayDoublePointsEffects == false) {
            _score = _score + 25;
          } else {
            _score = _score + 50;
          }
        } else if (_currentCannon == CannonType.black) {
          if (_shouldDisplayDoublePointsEffects == false) {
            _score = _score + 35;
          } else {
            _score = _score + 70;
          }
        } else if (_currentCannon == CannonType.white) {
          if (_shouldDisplayDoublePointsEffects == false) {
            _score = _score + 45;
          } else {
            _score = _score + 90;
          }
        }
      }
      notifyListeners();
    }
  }

  void handleComboHitsMessageAndHoldTripleHit() {
    /// dont incremnet combo hits if it's greater than 3
    if (_comboHits < 3) {
      _comboHits++;
      if (_comboHits == 2) {
        soundModel.playOtherSounds('sizzlePop.wav');
        // soundModel.playOtherSounds('doubleKill.wav');
      }
      if (_comboHits >= 3) {
        fireDoublePointsEffects();
        soundModel.playOtherSounds('tipleKill.wav');
      }
    } else {
      Future.delayed(Duration(milliseconds: 1200), () {
        _comboHits = 0;
        notifyListeners();
      });
    }
  }

  void contactSixOrMore() {
    for (var i = 0; i < 11; i++) {
      if (buildings[i].buildingHeight >= 6) {
        if (buildings[i].buildingHeight <= _handPosition + 2 &&
            buildings[i].buildingHeight <= 12 &&
            buildings[i].buildingHeight >= 1) {
          /// then contact has been made
          handleComboHitsMessageAndHoldTripleHit();
          // _comboHits++;
          // if (_comboHits >= 3) {
          //   fireDoublePointsEffects();
          // }
          contactGrid.removeAt(i);
          contactGrid.insert(
              i,
              HellFireContactColumns(
                  potentialContactPosition: _handPosition + 1));

          /// add a animation when the gunshot hits a target
          /// at the location of contact
          notifyListeners();
          Future.delayed(Duration(milliseconds: 400), () {
            resetHellFireContactLocations();
            contactGrid.removeAt(i);

            /// remove the animation effect quickly
            contactGrid.insert(
                i, HellFireContactColumns(potentialContactPosition: 21));
            pointsForHittingPerCannonType();

            /// 21 adds a blank column
            notifyListeners();
          });
        }
      }
    }
  }

  void fireContact() {
    if (_handPosition == 5) {
      if (buildings[1].buildingHeight >= 1 &&
          buildings[1].buildingHeight <= 5) {
        contactGrid.removeAt(1);
        contactGrid.add(HellFireContactColumns(potentialContactPosition: 1));
        notifyListeners();
        Future.delayed(Duration(milliseconds: 200), () {
          contactGrid.removeAt(1);
          notifyListeners();
        });
      } else if (buildings[2].buildingHeight >= 1 &&
          buildings[2].buildingHeight <= 5) {
        contactGrid.removeAt(2);
        contactGrid.add(HellFireContactColumns(potentialContactPosition: 1));
        notifyListeners();
        Future.delayed(Duration(milliseconds: 200), () {
          contactGrid.removeAt(2);
          notifyListeners();
        });
      } else if (buildings[3].buildingHeight >= 1 &&
          buildings[3].buildingHeight <= 5) {
        contactGrid.removeAt(3);
        contactGrid.add(HellFireContactColumns(potentialContactPosition: 1));
        notifyListeners();
        Future.delayed(Duration(milliseconds: 200), () {
          contactGrid.removeAt(3);
          notifyListeners();
        });
      }
    }
  }

  /// combo data provider
  ///

  int _roundsInMagazine = 18;
  int get roundsInMagazine => _roundsInMagazine;

  void fireHellFire() {
    if (flamesSecond.isEmpty == false) {
      _fullyLoaded = false;
      if (_roundsInMagazine > 0) {
        _roundsInMagazine--;
        // soundModel.playLaserSound();
        soundModel.playOtherSounds('laserUpgrade.wav');
        // soundModel.playOtherSoundsTwo('shortLaserSplat.wav');
      }

      /// reset combo hits
      if (_comboHits < 3) {
        _comboHits = 0;
      }

      moveHellFire();
      hellFireColumns.removeAt(hellFireColumns.length - 1);

      hellFireColumns.insert(
          0,
          HellFirePowerUpColumns(
            /// by setting powerup position to 7, there should always be a powerup created
            firePosition: _handPosition,
          ));
      contactFiveOrLess();
      contactSixOrMore();
      // fireContact();
      notifyListeners();
      if (flames.length > 0) {
        flames.removeAt(0);
        notifyListeners();
      } else if (flamesSecond.length > 0) {
        flamesSecond.removeAt(0);
        notifyListeners();
      }
    }
  }

  bool _shouldNotTellHellFireToCancelTimer = true;

  void hellFirePowerUp() {
    var timer = Timer.periodic(Duration(milliseconds: 10), (timer) {
      if (_crashed == false) {
        /// use a different conditional to determine if hell fire is active
        if (_isPaused == false) {
          moveHellFire();

          notifyListeners();
        }
      } else {
        resetHellFireColumns();
        timer.cancel();
        print('canceling building creation timer');
      }
    });
    notifyListeners();
  }
}
