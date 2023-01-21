import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/game_status_provider.dart';
import 'cannon_ammunition_widget.dart';

class BottomOfTheScreenImages extends StatelessWidget {
  const BottomOfTheScreenImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return context.watch<GameStatusProvider>().shouldShowCoinWinEffect == true
        ? Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 500.0,
                  ),
                  Expanded(
                    child: Container(
                      child: Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage('images/winnerLadyFistPump.gif'
                                        // 'images/blackRedYellowExplosion.gif',
                                        ))),
                      ),
                      height: 400.0,
                    ),
                  ),
                ],
              ),
            ],
          )
        : Container(
            color: Colors.black,
          );
  }
}
