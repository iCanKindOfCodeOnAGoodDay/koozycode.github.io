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
      // width: 200.0,
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('images/ledScreenBackground.jpg')),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // color: Colors.black,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/redChip.jpg')),
                    ),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Effects',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20.0),
                            ),
                            // SizedBox(
                            //   height: 50.0,
                            // ),
                            Container(
                              child: context
                                          .watch<GameStatusProvider>()
                                          .hearSoundEffects ==
                                      false
                                  ? GestureDetector(
                                      onTap: () {
                                        // soundModel.turnOnSoundEffects();
                                        // soundModel.playReloadSound();
                                        context
                                            .read<GameStatusProvider>()
                                            .turnOnSoundEffects();
                                      },
                                      child: Icon(
                                        Icons.play_circle_outline_outlined,
                                        size: 150.0,
                                        color: context
                                                    .watch<GameStatusProvider>()
                                                    .hearSoundEffects ==
                                                true
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    )
                                  : GestureDetector(
                                      onTap: () {
                                        // soundModel.turnOffSoundEffects();
                                        context
                                            .read<GameStatusProvider>()
                                            .turnOffSoundEffects();
                                      },
                                      child: Icon(
                                        Icons.pause_circle_outline,
                                        size: 150.0,
                                        color: context
                                                    .watch<GameStatusProvider>()
                                                    .hearSoundEffects ==
                                                false
                                            ? Colors.white
                                            : Colors.black,
                                      ),
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
                        Text(
                          'Music',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 20.0),
                        ),
                        // SizedBox(
                        //   height: 10.0,
                        // ),
                        Container(
                          child: context
                                      .watch<GameStatusProvider>()
                                      .hearBackgroundMusic ==
                                  false
                              ? GestureDetector(
                                  onTap: () {
                                    // soundModel.disposeMusicSoundPlayer();
                                    context
                                        .read<GameStatusProvider>()
                                        .setBackgroundMusicToTrue();
                                    soundModel.playSpookyMusic(context
                                        .read<GameStatusProvider>()
                                        .hearBackgroundMusic);
                                    soundModel.playLoopSizzleSound(context
                                        .read<GameStatusProvider>()
                                        .hearBackgroundMusic);
                                    // soundModel.playCreapyWingsSound(
                                    //     context.read<GameStatusProvider>().hearBackgroundMusic);
                                    soundModel.playLoopElectricChair(context
                                        .read<GameStatusProvider>()
                                        .hearBackgroundMusic);
                                    // soundModel.playScreechSound(
                                    //     context.read<GameStatusProvider>().hearBackgroundMusic);
                                    soundModel.playLoopFireworksSounds(context
                                        .read<GameStatusProvider>()
                                        .hearBackgroundMusic);
                                  },
                                  child: Icon(
                                    Icons.play_circle_outline_outlined,
                                    size: 150.0,
                                    color: context
                                                .watch<GameStatusProvider>()
                                                .hearBackgroundMusic ==
                                            false
                                        ? Colors.black
                                        : Colors.white,
                                  ),
                                )
                              : GestureDetector(
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
                                    size: 150.0,
                                    color: context
                                                .watch<GameStatusProvider>()
                                                .hearBackgroundMusic ==
                                            false
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_circle_right_outlined,
                  size: 50.0,
                  color: Colors.white54,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
