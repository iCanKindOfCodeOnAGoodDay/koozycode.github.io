import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class SoundModel {
  void playMusicSound() async {
    final musicPlayer = AudioPlayer();
    await musicPlayer.setLoopMode(LoopMode.one);
    await musicPlayer.setAsset('assets/spookyMusic.wav');
    await musicPlayer.play();

    await musicPlayer.dispose();
  }

  void playSizzleSound() async {
    final musicPlayer = AudioPlayer();
    await musicPlayer.setLoopMode(LoopMode.one);
    await musicPlayer.setAsset('assets/sizzleFire.wav');
    await musicPlayer.play();

    await musicPlayer.dispose();
  }

  void playCreapyWingsSound() async {
    final musicPlayer = AudioPlayer();
    await musicPlayer.setLoopMode(LoopMode.one);
    await musicPlayer.setAsset('assets/wingsNewOne.wav');
    await musicPlayer.play();

    await musicPlayer.dispose();
  }

  void playElectricChair() async {
    final musicPlayer = AudioPlayer();
    await musicPlayer.setLoopMode(LoopMode.one);
    await musicPlayer.setAsset('assets/electricChair.wav');
    await musicPlayer.play();

    await musicPlayer.dispose();
  }

  void playCreatureSounds() async {
    final musicPlayer = AudioPlayer();
    await musicPlayer.setLoopMode(LoopMode.one);
    await musicPlayer.setAsset('assets/fireworks.wav');
    await musicPlayer.play();

    await musicPlayer.dispose();
  }

  void playScreechSound() async {
    final musicPlayer = AudioPlayer();
    await musicPlayer.setLoopMode(LoopMode.one);
    await musicPlayer.setAsset('assets/sciFiEngine.wav');
    await musicPlayer.play();

    await musicPlayer.dispose();
  }

  void playLoopWhistle() async {
    final musicPlayer = AudioPlayer();
    await musicPlayer.setLoopMode(LoopMode.one);
    await musicPlayer.setAsset('assets/whistle.wav');
    await musicPlayer.play();

    await musicPlayer.dispose();
  }

  void playLoopFootSteps() async {
    final musicPlayer = AudioPlayer();
    await musicPlayer.setVolume(5.0);
    await musicPlayer.setLoopMode(LoopMode.one);
    await musicPlayer.setAsset('footStepsTwo.wav');
    await musicPlayer.play();

    await musicPlayer.dispose();
  }

  void playOtherSounds(String soundPath) async {
    final audioPlayer = AudioPlayer();
    await audioPlayer.setAsset('assets/$soundPath');
    await audioPlayer.play();
    await audioPlayer.dispose();
  }

  void playOtherThree(String soundPath) async {
    final audioPlayer = AudioPlayer();
    await audioPlayer.setAsset('assets/$soundPath');
    await audioPlayer.play();
    await audioPlayer.dispose();
  }

  void playOtherFour(String soundPath) async {
    final audioPlayer = AudioPlayer();
    await audioPlayer.setAsset('assets/$soundPath');
    await audioPlayer.play();
    await audioPlayer.dispose();
  }

  void playOtherSoundsTwo(String soundPath) async {
    final audioPlayer = AudioPlayer();
    await audioPlayer.setAsset('assets/$soundPath');
    await audioPlayer.play();
    await audioPlayer.dispose();
  }

  void playFallingSound(String soundPath) async {
    final fallingSoundPlayer = AudioPlayer();
    await fallingSoundPlayer.setAsset('assets/$soundPath');
    await fallingSoundPlayer.play();
    await fallingSoundPlayer.dispose();
  }

  // void disposeMusicSoundPlayer() async {
  //   musicPlayer.dispose();
  // }

  /// reload sound

  void playReloadSound() async {
    final reloadPlayer = AudioPlayer();

    await reloadPlayer.setAsset('assets/laserReload.wav');
    await reloadPlayer.play();

    await reloadPlayer.dispose();
  }
  //
  // void disposeReloadSoundPlayer() async {
  //   reloadPlayer.dispose();
  // }

  // laser shot player

  void playLaserSound() async {
    final laserShotPlayer = AudioPlayer();
    await laserShotPlayer.setAsset('assets/laserUpgrade.wav');
    await laserShotPlayer.play();

    await laserShotPlayer.dispose();
  }

  // void disposeLaserSoundPlayer() async {
  //   laserShotPlayer.dispose();
  // }

  void playTapSound() async {
    final tapSoundPlayer = AudioPlayer();

    await tapSoundPlayer.setVolume(5.0);

    await tapSoundPlayer.setAsset('assets/tap.wav');
    await tapSoundPlayer.play();

    await tapSoundPlayer.dispose();
  }

  // void disposeTapSoundPlayer() async {
  //   tapSoundPlayer.dispose();
  // }

  void playCreatureSound() async {
    final creatureSoundPlayer = AudioPlayer();

    await creatureSoundPlayer.setAsset('assets/creature.wav');
    await creatureSoundPlayer.play();

    await creatureSoundPlayer.dispose();
  }

  // void disposeCreatureSoundPlayer() async {
  //   creatureSoundPlayer.dispose();
  // }

  void playCannonUpgradeSound() async {
    final cannonUpgradeSoundPlayer = AudioPlayer();

    await cannonUpgradeSoundPlayer.setAsset('assets/cannonUpgrade.wav');
    await cannonUpgradeSoundPlayer.play();

    await cannonUpgradeSoundPlayer.dispose();
  }

  // void disposeCannonUpgradeSoundPlayer() async {
  //   cannonUpgradeSoundPlayer.dispose();
  // }

  void playDoubleKillSound() async {
    final doubleKillSoundPlayer = AudioPlayer();

    await doubleKillSoundPlayer.setAsset('assets/doubleKill.wav');
    await doubleKillSoundPlayer.play();

    await doubleKillSoundPlayer.dispose();
  }
  //
  // void disposeDoubleKillSoundPlayer() async {
  //   doubleKillSoundPlayer.dispose();
  // }

  void playTripleKillSound() async {
    final tripleKillSoundPlayer = AudioPlayer();

    await tripleKillSoundPlayer.setAsset('assets/tipleKill.wav');
    await tripleKillSoundPlayer.play();

    await tripleKillSoundPlayer.dispose();
  }

  // void disposeTripleKillSoundPlayer() async {
  //   tripleKillSoundPlayer.dispose();
  // }

  void playRampageSound() async {
    final rampageSoundPlayer = AudioPlayer();

    await rampageSoundPlayer.setAsset('assets/rampage.wav');
    await rampageSoundPlayer.play();

    await rampageSoundPlayer.dispose();
  }

  // void disposeRampageSoundPlayer() async {
  //   rampageSoundPlayer.dispose();
  // }
}
