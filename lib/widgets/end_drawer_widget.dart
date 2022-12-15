import 'package:flutter/material.dart';

import 'package:flappy_taco/models/sound_model.dart';

SoundModel soundModel = SoundModel();

class EndDrawerCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          SizedBox(
            height: 50.0,
          ),
          GestureDetector(
            onTap: () {
              // soundModel.disposeMusicSoundPlayer();
              soundModel.playMusicSound();
              soundModel.playSizzleSound();
              // soundModel.playOtherSounds('sizzleFire.wav');
              // soundModel.playTripleKillSound();
              // soundModel.playLaserSound();
              // soundModel.playCannonUpgradeSound();
              // soundModel.playCreatureSound();
              // soundModel.playRampageSound();
              // soundModel.playTapSound();

              /// for testing purposes
              /// attempt to play a tap sound from right here instead of the music
              ///
            },
            child: Icon(
              Icons.play_circle_outline_outlined,
              size: 200.0,
              color: Colors.yellow,
            ),
          ),
          GestureDetector(
            onTap: () {
              // soundModel.disposeMusicSoundPlayer();
            },
            child: Icon(
              Icons.pause_circle_outline,
              size: 200.0,
              color: Colors.yellow,
            ),
          ),
          Container(
            width: 200.0,
            child: Column(
              children: [
                Text(
                  'featuring Spooky Sounds',
                  style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.w700,
                      fontSize: 60.0),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
