import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../providers/game_status_provider.dart';
import 'cannon_switch_widget.dart';

class GameControlsWidgets extends StatelessWidget {
  const GameControlsWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CannonSwitch(
                    cannonIsLoaded:
                        context.watch<GameStatusProvider>().fullyLoaded,
                    remainingAmmo:
                        context.watch<GameStatusProvider>().roundsInMagazine,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, left: 8.0, right: 8.0, bottom: 8.0),
              child: Opacity(
                opacity: 0.9,
                child: Container(
                  // color: Colors.yellow,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/energyHumps.gif')),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        context.read<GameStatusProvider>().handJump();
                      },
                      child: Container(
                        width: 150.0,
                        height: 100,
                        child: Center(
                          child: Text(
                            'jump',
                            style: kButtonStyle,
                          ),
                        ),
                        color:
                            context.watch<GameStatusProvider>().lastCommand ==
                                    LastGamePlayButton.jump
                                ? Colors.black
                                : Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8),
              child: Opacity(
                opacity: 0.9,
                child: Container(
                  // color: Colors.yellow,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/energyHumps.gif')),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        context.read<GameStatusProvider>().handDive();
                      },
                      child: Container(
                        width: 150.0,
                        height: 100.0,
                        child: Center(
                          child: Text(
                            'dive',
                            style: kButtonStyle,
                          ),
                        ),
                        color:
                            context.watch<GameStatusProvider>().lastCommand ==
                                    LastGamePlayButton.dive
                                ? Colors.black
                                : Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            context.watch<GameStatusProvider>().nukeList.isNotEmpty == true
                ? GestureDetector(
                    onTap: () {
                      context
                          .read<GameStatusProvider>()
                          .nuclearExplosionOnScreen();
                    },
                    child: Row(
                      children: context.watch<GameStatusProvider>().nukeList,
                    ),
                  )
                : Container(
                    height: 70.0,
                  ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Opacity(
                opacity: 0.9,
                child: GestureDetector(
                  onTap: () {
                    context.read<GameStatusProvider>().handClimb();
                  },
                  child: Container(
                    // color: Colors.yellow,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/energyHumps.gif')),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100.0,
                        width: 150.0,
                        child: Center(
                          child: Text(
                            'climb',
                            style: kButtonStyle,
                          ),
                        ),
                        color:
                            context.watch<GameStatusProvider>().lastCommand ==
                                    LastGamePlayButton.climb
                                ? Colors.black
                                : Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
