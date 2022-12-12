import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flappy_taco/providers/game_status_provider.dart';

class CannonFireLarge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return context.watch<GameStatusProvider>().currentCannon ==
            CannonType.orange
        ? Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('images/fireBallXYellow2.gif'))),
          )
        : context.watch<GameStatusProvider>().currentCannon == CannonType.yellow
            ? Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/invertGreenFireBall.gif'))),
              )
            : context.watch<GameStatusProvider>().currentCannon ==
                    CannonType.purple
                ? Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/fireBallXPurple.gif'))),
                  )
                //// else cannon type is flashing
                : context.watch<GameStatusProvider>().currentCannon ==
                        CannonType.blue
                    ? Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('images/fireBallXBlue.gif'))),
                      )
                    : context.watch<GameStatusProvider>().currentCannon ==
                            CannonType.flashing
                        ? Container(
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'images/fireBallXFlashing2.gif'))),
                          )
                        : context.watch<GameStatusProvider>().currentCannon ==
                                CannonType.white
                            ? Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'images/whiteFireBall.gif'))),
                              )
                            : Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'images/greyFireBall.gif'))),
                              );
  }
}
