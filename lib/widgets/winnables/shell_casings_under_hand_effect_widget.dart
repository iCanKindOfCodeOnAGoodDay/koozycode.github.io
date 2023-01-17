import 'package:flappy_taco/providers/premium_content_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flappy_taco/providers/game_status_provider.dart';

/// 7 ammmo types
/// orange, yellow, greenish blue, pink, flashing, black, white
class ShellCasingWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return context.watch<GameStatusProvider>().currentCannon ==
            CannonType.orange
        ? Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('images/bulletsCC1.gif'))),
          )
        : context.watch<GameStatusProvider>().currentCannon == CannonType.yellow
            ? Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/bulletsCCYellow2.gif'))),
              )
            : context.watch<GameStatusProvider>().currentCannon ==
                    CannonType.purple
                ? Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/bulletsCCPurplex.gif'))),
                  )
                //// else cannon type is flashing
                : context.watch<GameStatusProvider>().currentCannon ==
                        CannonType.blue
                    ? Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage('images/bulletsCCBlue2.gif'))),
                      )
                    : context.watch<GameStatusProvider>().currentCannon ==
                            CannonType.flashing
                        ? Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage('images/bulletsCCRed.gif'))),
                          )
                        : context.watch<GameStatusProvider>().currentCannon ==
                                CannonType.black
                            ? Container(
                                height: 40.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'images/bulletsCCBlack.gif'))),
                              )
                            : Container(
                                height: 40.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'images/bulletsCCWhitexxx.gif'))),
                              );
  }
}
