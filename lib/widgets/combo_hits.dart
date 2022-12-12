import 'package:flappy_taco/providers/game_status_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ComboHitsMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return context.watch<GameStatusProvider>().comboHits == 2
        ? Column(
            children: [
              Container(
                height: 60.0,
                width: 120.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/2xDoubleDouble.gif'))),
              ),
            ],
          )
        : context.watch<GameStatusProvider>().comboHits == 3
            ? Container(
                height: 60.0,
                width: 120.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/3xGobbleGobblePink.gif'))),
              )
            : context.watch<GameStatusProvider>().comboHits == 3
                ? Container(
                    height: 60.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/4xUltraHit.gif'))),
                  )
                : Container();
  }
}
