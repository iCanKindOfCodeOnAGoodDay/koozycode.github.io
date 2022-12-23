import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/game_status_provider.dart';

class TwoXWinEffectWidgets extends StatelessWidget {
  const TwoXWinEffectWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return context
                .watch<GameStatusProvider>()
                .shouldDisplayDoublePointsEffects ==
            true
        ? Column(
            children: [
              Container(
                height: 700,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('images/2xWinEffect2.gif')),
                ),
              ),
            ],
          )
        : Container();
  }
}
