import 'package:flutter/material.dart';

import 'package:flappy_taco/models/sound_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flappy_taco/providers/game_status_provider.dart';
import 'package:provider/provider.dart';

SoundModel soundModel = SoundModel();

class EndDrawerCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      child: ListView(
        children: [
          Container(
            color: Colors.black,
            child: Column(
              children: [
                Container(
                  width: 200.0,
                  child: Column(
                    children: [
                      Text(
                        'Effects',
                        style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.w700,
                            fontSize: 60.0),
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          // soundModel.turnOnSoundEffects();
                          // soundModel.playReloadSound();
                          context
                              .read<GameStatusProvider>()
                              .turnOnSoundEffects();
                        },
                        child: Icon(
                          Icons.play_circle_outline_outlined,
                          size: 200.0,
                          color: context
                                      .watch<GameStatusProvider>()
                                      .hearSoundEffects ==
                                  true
                              ? Colors.pink
                              : Colors.yellow,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // soundModel.turnOffSoundEffects();
                          context
                              .read<GameStatusProvider>()
                              .turnOffSoundEffects();
                        },
                        child: Icon(
                          Icons.pause_circle_outline,
                          size: 200.0,
                          color: context
                                      .watch<GameStatusProvider>()
                                      .hearSoundEffects ==
                                  false
                              ? Colors.pink
                              : Colors.yellow,
                        ),
                      ),
                      // GestureDetector(
                      //   onTap: () {
                      //     // soundModel.turnOnSoundEffects();
                      //     // soundModel.playReloadSound(context.watch<GameStatusProvider>().hearSoundEffects);
                      //   },
                      //   child: Icon(
                      //     Icons.play_circle_outline_outlined,
                      //     size: 200.0,
                      //     color: Colors.pink,
                      //   ),
                      // ),
                    ],
                  ),
                ),
                Text(
                  'Music',
                  style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.w700,
                      fontSize: 60.0),
                ),
                SizedBox(
                  height: 50.0,
                ),
                GestureDetector(
                  onTap: () {
                    // soundModel.disposeMusicSoundPlayer();
                    context
                        .read<GameStatusProvider>()
                        .setBackgroundMusicToTrue();
                    soundModel.playSpookyMusic(
                        context.read<GameStatusProvider>().hearBackgroundMusic);
                    soundModel.playLoopSizzleSound(
                        context.read<GameStatusProvider>().hearBackgroundMusic);
                    // soundModel.playCreapyWingsSound(
                    //     context.read<GameStatusProvider>().hearBackgroundMusic);
                    soundModel.playLoopElectricChair(
                        context.read<GameStatusProvider>().hearBackgroundMusic);
                    // soundModel.playScreechSound(
                    //     context.read<GameStatusProvider>().hearBackgroundMusic);
                    soundModel.playLoopFireworksSounds(
                        context.read<GameStatusProvider>().hearBackgroundMusic);
                  },
                  child: Icon(
                    Icons.play_circle_outline_outlined,
                    size: 200.0,
                    color: context
                                .watch<GameStatusProvider>()
                                .hearBackgroundMusic ==
                            false
                        ? Colors.yellow
                        : Colors.pink,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context
                        .read<GameStatusProvider>()
                        .setBackgroundMusicToFalse();
                    // soundModel.disposeMusicSoundPlayer();
                    soundModel.killSpookyMusic();
                    soundModel.killLoopElectricChair();
                    soundModel.killLoopFireworksSoundsPlayer();
                    soundModel.killLoopSizzleSound();
                  },
                  child: Icon(
                    Icons.pause_circle_outline,
                    size: 200.0,
                    color: context
                                .watch<GameStatusProvider>()
                                .hearBackgroundMusic ==
                            false
                        ? Colors.pink
                        : Colors.yellow,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
