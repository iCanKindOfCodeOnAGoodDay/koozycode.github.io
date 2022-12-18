import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flappy_taco/providers/game_status_provider.dart';

class SoundModel {
  void playReloadMaleVoice() async {
    final reloadVoicePlayer = AudioPlayer();

    // await reloadVoicePlayer.setLoopMode(LoopMode.one);
    await reloadVoicePlayer.setAsset('assets/reloadMaleVoice.mp3');
    await reloadVoicePlayer.play();
    await reloadVoicePlayer.stop();
    await reloadVoicePlayer.dispose();
  }

  void playMusicSound() async {
    final musicPlayer = AudioPlayer();
    await musicPlayer.setLoopMode(LoopMode.one);
    await musicPlayer.setAsset('assets/spookyMusic.mp3');
    await musicPlayer.play();
    await musicPlayer.stop();
    // Stop an
    // d free resources
    await musicPlayer.dispose();
    // Clear the asset cache directory
    // await AudioPlayer.clearAssetCache();

// Download and cache audio while playing it (experimental)
  }

  void playSizzleSound() async {
    final musicPlayer = AudioPlayer();
    await musicPlayer.setLoopMode(LoopMode.one);
    await musicPlayer.setAsset('assets/sizzleFire.mp3');
    await musicPlayer.play();
    await musicPlayer.stop();
    // Clear the asset cache directory
    // await AudioPlayer.clearAssetCache();
    // Stop an
    // d free resources
    await musicPlayer.dispose();
  }

  void playCreapyWingsSound() async {
    final musicPlayer = AudioPlayer();
    await musicPlayer.setLoopMode(LoopMode.one);
    await musicPlayer.setAsset('assets/wingsNewOne.mp3');
    await musicPlayer.play();
    await musicPlayer.stop();
    // Clear the asset cache directory
    // await AudioPlayer.clearAssetCache();
    // Stop an
    // d free resources
    await musicPlayer.dispose();
  }

  void playElectricChair() async {
    final musicPlayer = AudioPlayer();
    await musicPlayer.setLoopMode(LoopMode.one);
    await musicPlayer.setAsset('assets/electricChair.mp3');
    await musicPlayer.play();
    await musicPlayer.stop();
    // Clear the asset cache directory
    // await AudioPlayer.clearAssetCache();
    // Stop an
    // d free resources
    await musicPlayer.dispose();
  }

  void playFireworkdsSounds() async {
    final musicPlayer = AudioPlayer();
    await musicPlayer.setLoopMode(LoopMode.one);
    await musicPlayer.setAsset('assets/fireworks.mp3');
    await musicPlayer.play();
    await musicPlayer.stop();
    // Clear the asset cache directory
    // await AudioPlayer.clearAssetCache();
    // Stop an
    // d free resources
    await musicPlayer.dispose();
  }

  void playScreechSound() async {
    final musicPlayer = AudioPlayer();
    await musicPlayer.setLoopMode(LoopMode.one);
    await musicPlayer.setAsset('assets/sciFiEngine.mp3');
    await musicPlayer.play();
    await musicPlayer.stop();
    // Clear the asset cache directory
    // await AudioPlayer.clearAssetCache();
    // Stop an
    // d free resources
    await musicPlayer.dispose();
  }

  void playLoopWhistle() async {
    final musicPlayer = AudioPlayer();
    await musicPlayer.setLoopMode(LoopMode.one);
    await musicPlayer.setAsset('assets/whistle.mp3');
    await musicPlayer.play();
    await musicPlayer.stop();
    // Clear the asset cache directory
    // await AudioPlayer.clearAssetCache();
    // Stop an
    // d free resources
    await musicPlayer.dispose();
  }

  void playLoopFootSteps() async {
    final musicPlayer = AudioPlayer();
    await musicPlayer.setVolume(5.0);
    await musicPlayer.setLoopMode(LoopMode.one);
    await musicPlayer.setAsset('assets/footStepsTwo.mp3');
    await musicPlayer.play();
    await musicPlayer.stop();
    // Clear the asset cache directory
    // await AudioPlayer.clearAssetCache();
    // Stop an
    // d free resources
    await musicPlayer.dispose();
  }

  // void playLoopedSounds(String soundPath) async {
  //   final musicPlayer = AudioPlayer();
  //   await musicPlayer.setVolume(5.0);
  //   await musicPlayer.setLoopMode(LoopMode.one);
  //   await musicPlayer.setAsset('footStepsTwo.mp3');
  //   await musicPlayer.play();
  //   await musicPlayer.stop();
  //   // Clear the asset cache directory
  //   // await AudioPlayer.clearAssetCache();
  //   // Stop an
  //   // d free resources
  //   await musicPlayer.dispose();
  //
  //
  // }

  void playOtherSounds(String soundPath) async {
    final audioPlayer = AudioPlayer();
    await audioPlayer.setAsset('assets/$soundPath');
    await audioPlayer.play();
    await audioPlayer.stop();
    // Clear the asset cache directory
    // await AudioPlayer.clearAssetCache();
    // Stop an
    // d free resources
    await audioPlayer.dispose();
  }

  void playOtherThree(String soundPath) async {
    final audioPlayer = AudioPlayer();
    await audioPlayer.setAsset('assets/$soundPath');
    await audioPlayer.play();
    await audioPlayer.stop();
    // Clear the asset cache directory
    // await AudioPlayer.clearAssetCache();
    // Stop an
    // d free resources
    await audioPlayer.dispose();
  }

  void playOtherFour(String soundPath) async {
    final audioPlayer = AudioPlayer();
    await audioPlayer.setAsset('assets/$soundPath');
    await audioPlayer.play();
    await audioPlayer.stop();
    // Clear the asset cache directory
    // await AudioPlayer.clearAssetCache();
    // Stop an
    // d free resources
    await audioPlayer.dispose();
  }

  /// new sound playing functions

  void playOtherFive(String soundPath) async {
    final audioPlayer = AudioPlayer();
    await audioPlayer.setAsset('assets/$soundPath');
    await audioPlayer.play();
    await audioPlayer.stop();
    // Clear the asset cache directory
    // await AudioPlayer.clearAssetCache();
    // Stop an
    // d free resources
    await audioPlayer.dispose();
  }

  void playOtherSix(String soundPath) async {
    final audioPlayer = AudioPlayer();
    await audioPlayer.setAsset('assets/$soundPath');
    await audioPlayer.play();
    await audioPlayer.stop();
    // Clear the asset cache directory
    // await AudioPlayer.clearAssetCache();
    // Stop an
    // d free resources
    await audioPlayer.dispose();
  }

  void playOtherSeven(String soundPath) async {
    final audioPlayer = AudioPlayer();
    await audioPlayer.setAsset('assets/$soundPath');
    await audioPlayer.play();
    await audioPlayer.stop();
    // Clear the asset cache directory
    // await AudioPlayer.clearAssetCache();
    // Stop an
    // d free resources
    await audioPlayer.dispose();
  }

  void playOtherEight(String soundPath) async {
    final audioPlayer = AudioPlayer();
    await audioPlayer.setAsset('assets/$soundPath');
    await audioPlayer.play();
    await audioPlayer.stop();
    // Clear the asset cache directory
    // await AudioPlayer.clearAssetCache();
    // Stop an
    // d free resources
    await audioPlayer.dispose();
  }

  void playOtherNine(String soundPath) async {
    final audioPlayer = AudioPlayer();
    await audioPlayer.setAsset('assets/$soundPath');
    await audioPlayer.play();
    await audioPlayer.stop();
    // Clear the asset cache directory
    // await AudioPlayer.clearAssetCache();
    // Stop an
    // d free resources
    await audioPlayer.dispose();
  }

  void playOtherTen(String soundPath) async {
    final audioPlayer = AudioPlayer();
    await audioPlayer.setAsset('assets/$soundPath');
    await audioPlayer.play();
    await audioPlayer.stop();
    // Clear the asset cache directory
    // await AudioPlayer.clearAssetCache();
    // Stop an
    // d free resources
    await audioPlayer.dispose();
  }

  /// that's where the new sound players end

  void playOtherSoundsTwo(String soundPath) async {
    final audioPlayer = AudioPlayer();
    await audioPlayer.setAsset('assets/$soundPath');
    await audioPlayer.play();
    await audioPlayer.stop();
    // Clear the asset cache directory
    // await AudioPlayer.clearAssetCache();
    // Stop an
    // d free resources
    await audioPlayer.dispose();
  }

  void playOtherSounds5x(String soundPath) async {
    final audioPlayer = AudioPlayer();
    await audioPlayer.setVolume(5.0);
    await audioPlayer.setAsset('assets/$soundPath');
    await audioPlayer.play();
    await audioPlayer.stop();
    // Clear the asset cache directory
    // await AudioPlayer.clearAssetCache();
    // Stop an
    // d free resources
    await audioPlayer.dispose();
  }

  void playFallingSound(String soundPath) async {
    final fallingSoundPlayer = AudioPlayer();
    await fallingSoundPlayer.setAsset('assets/$soundPath');
    await fallingSoundPlayer.play();
    await fallingSoundPlayer.stop();
    // Clear the asset cache directory
    // await AudioPlayer.clearAssetCache();
    // Stop an
    // d free resources
    await fallingSoundPlayer.dispose();
  }

  // void disposeMusicSoundPawait player.stop();
  // Stop an
  // d free resourceslayer() async {
  //   musicPlayer.dispose();
  // }

  /// reload sound

  void playReloadSound() async {
    final reloadPlayer = AudioPlayer();

    await reloadPlayer.setAsset('assets/laserReload.mp3');
    await reloadPlayer.play();
    await reloadPlayer.stop();
    // Clear the asset cache directory
    // await AudioPlayer.clearAssetCache();
    // Stop an
    // d free resources
    await reloadPlayer.dispose();
  }
  //
  // void disposeReloadSoundPawait player.stop();
  // Stop an
  // d free resourceslayer() async {
  //   reloadPlayer.dispose();
  // }

  // laser shot player

  void playLaserSound() async {
    final laserShotPlayer = AudioPlayer();
    await laserShotPlayer.setAsset('assets/laserUpgrade.mp3');
    await laserShotPlayer.play();
    await laserShotPlayer.stop();
    // Clear the asset cache directory
    // await AudioPlayer.clearAssetCache();
    // Stop an
    // d free resources
    await laserShotPlayer.dispose();
  }

  // void disposeLaserSoundPlayeawait player.stop();
  // Stop an
  // d free resourcesr() async {
  //   laserShotPlayer.dispose();
  // }

  void playTapSound() async {
    final tapSoundPlayer = AudioPlayer();

    await tapSoundPlayer.setVolume(5.0);

    await tapSoundPlayer.setAsset('assets/tap.mp3');
    await tapSoundPlayer.play();
    await tapSoundPlayer.stop();
    // Clear the asset cache directory
    // await AudioPlayer.clearAssetCache();
    // Stop an
    // d free resources
    await tapSoundPlayer.dispose();
  }

  // void disposeTapSoundPlayerawait player.stop();
  // Stop an
  // d free resources() async {
  //   tapSoundPlayer.dispose();
  // }

  void playCreatureSound() async {
    final creatureSoundPlayer = AudioPlayer();

    await creatureSoundPlayer.setAsset('assets/creature.mp3');
    await creatureSoundPlayer.play();
    await creatureSoundPlayer.stop();
    // Clear the asset cache directory
    // await AudioPlayer.clearAssetCache();
    // Stop an
    // d free resources
    await creatureSoundPlayer.dispose();
  }

  // void disposeCreatureSoundPlayerawait player.stop();
  // Stop an
  // d free resources() async {
  //   creatureSoundPlayer.dispose();
  // }

  void playCannonUpgradeSound() async {
    final cannonUpgradeSoundPlayer = AudioPlayer();

    await cannonUpgradeSoundPlayer.setAsset('assets/cannonUpgrade.mp3');
    await cannonUpgradeSoundPlayer.play();
    await cannonUpgradeSoundPlayer.stop();
    // Clear the asset cache directory
    // await AudioPlayer.clearAssetCache();
    // Stop an
    // d free resources
    await cannonUpgradeSoundPlayer.dispose();
  }

  // void disposeCannonUpgradeSoundPlayerawait player.stop();
  // Stop an
  // d free resources() async {
  //   cannonUpgradeSoundPlayer.dispose();
  // }

  void playDoubleKillSound() async {
    final doubleKillSoundPlayer = AudioPlayer();

    await doubleKillSoundPlayer.setAsset('assets/doubleKill.mp3');
    await doubleKillSoundPlayer.play();
    await doubleKillSoundPlayer.stop();
    // Clear the asset cache directory
    // await AudioPlayer.clearAssetCache();
    // Stop an
    // d free resources
    await doubleKillSoundPlayer.dispose();
  }
  //
  // void disposeDoubleKillSoundPlayerawait player.stop();
  // Stop an
  // d free resources() async {
  //   doubleKillSoundPlayer.dispose();
  // }

  void playTripleKillSound() async {
    final tripleKillSoundPlayer = AudioPlayer();

    await tripleKillSoundPlayer.setAsset('assets/tipleKill.mp3');
    await tripleKillSoundPlayer.play();
    await tripleKillSoundPlayer.stop();
    // Clear the asset cache directory
    // await AudioPlayer.clearAssetCache();
    // Stop an
    // d free resources
    await tripleKillSoundPlayer.dispose();
  }

  // void disposeTripleKillSoundPlayerawait player.stop();
  // Stop an
  // d free resources() async {
  //   tripleKillSoundPlayer.dispose();
  // }

  void playRampageSound() async {
    final rampageSoundPlayer = AudioPlayer();

    await rampageSoundPlayer.setAsset('assets/rampage.mp3');
    await rampageSoundPlayer.play();
    await rampageSoundPlayer.stop();
    // Clear the asset cache directory
    // await AudioPlayer.clearAssetCache();
    // Stop an
    // d free resources
    await rampageSoundPlayer.dispose();
  }

  // void disposeRampageSoundPlayerawait player.stop();
// Stop an
// d free resources() async {
  //   rampageSoundPlayer.dispose();
  // }
}
