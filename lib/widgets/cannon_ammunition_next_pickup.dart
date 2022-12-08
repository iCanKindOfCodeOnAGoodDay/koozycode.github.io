import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flappy_taco/providers/game_status_provider.dart';

class AmmoPickup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return context.watch<GameStatusProvider>().currentAmmunition ==
            AmmoType.orange
        ? Container(
            height: 30.0,
            width: 30.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('images/fireBallXYellow2.gif'))),
          )
        : context.watch<GameStatusProvider>().currentAmmunition ==
                AmmoType.yellow
            ? Container(
                height: 30.0,
                width: 30.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/fireBallXBlue.gif'))),
              )
            : context.watch<GameStatusProvider>().currentAmmunition ==
                    AmmoType.purple
                ? Container(
                    height: 30.0,
                    width: 30.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/fireBallXPurple.gif'))),
                  )
                //// else cannon type is flashing
                : context.watch<GameStatusProvider>().currentAmmunition ==
                        AmmoType.blue
                    ? Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'images/fireBallXFlashing.gif'))),
                      )
                    : Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'images/fireBallXFlashing.gif'))),
                      );
  }
}
