import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../providers/game_status_provider.dart';
import 'coin_win_effect.dart';
import 'flashing_text_widget.dart';

class TopOfScreenControlsAndScoreWidgets extends StatelessWidget {
  const TopOfScreenControlsAndScoreWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        context.watch<GameStatusProvider>().shouldDisplayDoublePointsEffects ==
                false
            ? Stack(
                children: [
                  Text(context.watch<GameStatusProvider>().score.toString(),
                      style: kScoreStyle),
                  context.watch<GameStatusProvider>().shouldShowCoinWinEffect ==
                          true
                      ? Column(
                          children: [
                            // SizedBox(height: 300.0),
                            WinEffectForEachAmmoType(),
                          ],
                        )
                      : Container(),
                ],
              )
            : FlashingText(
                text: context.watch<GameStatusProvider>().score.toString()),
        context.watch<GameStatusProvider>().crashed == true
            ? Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('images/bloodSplatV.gif')),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      onTap: () {
                        context.read<GameStatusProvider>().start();
                        context.read<GameStatusProvider>().handFall();
                        context.read<GameStatusProvider>().resetGame();
                      },
                      child: Icon(
                        Icons.play_circle_outline_outlined,
                        size: 60.0,
                        color: Colors.yellow,
                      )),
                ),
              )
            : context.watch<GameStatusProvider>().isPaused == false
                ? Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/bloodSplatV.gif')),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          context.read<GameStatusProvider>().pauseGame();
                        },
                        child: Icon(
                          Icons.pause_circle_outline,
                          size: 60.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                : Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/bloodSplatV.gif')),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          context.read<GameStatusProvider>().resumeGame();
                        },
                        child: Icon(
                          Icons.play_circle_outline_outlined,
                          size: 60.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
      ],
    );
  }
}
