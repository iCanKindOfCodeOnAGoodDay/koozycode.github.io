import 'dart:async';

import 'package:flappy_taco/constants.dart';
import 'package:flappy_taco/providers/game_status_provider.dart';
import 'package:flappy_taco/widgets/top_screen_controls_and_score_widgets.dart';
import 'package:flappy_taco/widgets/bottom_screen_images.dart';
import 'package:flappy_taco/widgets/cannon_ammunition_widget.dart';
import 'package:flappy_taco/widgets/cannon_button.dart';
import 'package:flappy_taco/widgets/cannon_switch_widget.dart';
import 'package:flappy_taco/widgets/coin_win_effect.dart';
import 'package:flappy_taco/widgets/combo_hits.dart';
import 'package:flappy_taco/widgets/death_effect_column.dart';
import 'package:flappy_taco/widgets/end_drawer_widget.dart';
import 'package:flappy_taco/widgets/fireball_under_hand_column.dart';
import 'package:flappy_taco/widgets/flashing_text_widget.dart';
import 'package:flappy_taco/widgets/game_controls_widgets.dart';
import 'package:flappy_taco/widgets/game_play_area.dart';
import 'package:flappy_taco/widgets/power_up_widgets_lives_and.dart';
import 'package:flappy_taco/widgets/power_ups_widget.dart';
import 'package:flappy_taco/widgets/hand_column_widget.dart';
import 'package:flappy_taco/widgets/text_widget.dart';
import 'package:flappy_taco/widgets/top_of_Gameboy_widgets.dart';
import 'package:flappy_taco/widgets/top_screen_widgets.dart';
import 'package:flappy_taco/widgets/two_x_wineffect_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../widgets/bottom_of_gameboy_widgets.dart';

class GamePlayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: EndDrawerCustomWidget(),
      // backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                // 'images/horseRidingPeople.gif',
                // 'images/phoneInternalsBlack.PNG',
                'images/black.png',
              )),
        ),
        child: Stack(
          children: [
            ////todo top of the screen above game play area
            TopScreenWidgets(),

            ///todo this is the bottom screen below the game control buttons
            BottomOfTheScreenImages(),

            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      context
                                  .watch<GameStatusProvider>()
                                  .redGameBoyInsteadOfYellow ==
                              false
                          // ? 'images/futuristicGameConsoleNoLogo2BLANKLOGOBrightYellow2.png'
                          ? 'images/redChip.jpg'
                          : 'images/futuristicGameConsoleNoLogo2BLANKLOGO copy.png',
                    )),
              ),
            ),
            Opacity(
              opacity: context
                          .watch<GameStatusProvider>()
                          .shouldDisplayDoublePointsEffects ==
                      false
                  ? 1.0
                  : context.watch<GameStatusProvider>().opacityOfBlackGameBoy,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          'images/futuristicGameConsoleNoLogo2BLANKLOGO copy 3.png')),
                ),
              ),
            ),

            /// top of tv stand
            // TopOfGameboyWidgets(),
            // BottomOfGameboyWidgets(),
            TwoXWinEffectWidgets(),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.0,
                ),

                /// this is the bottom screen shittttt
                TopOfScreenControlsAndScoreWidgets(),
                GamePlayAreaWidget(),

                PowerUps(),
                Hero(
                  tag: 'fireBall',
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: context.watch<GameStatusProvider>().cannons,
                  ),
                ),

                GameControlsWidgets(),

                SecondPowerUps(),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
