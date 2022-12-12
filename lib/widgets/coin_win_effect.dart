import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flappy_taco/providers/game_status_provider.dart';

/// 7 ammmo types
/// orange, yellow, greenish blue, pink, flashing, black, white
class WinEffectForEachAmmoType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return context.watch<GameStatusProvider>().currentCannon ==
            CannonType.orange
        ? Container(
            height: 30.0,
            width: 30.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('images/coinWin.gif'))),
          )
        : context.watch<GameStatusProvider>().currentCannon == CannonType.yellow
            ? Container(
                height: 30.0,
                width: 30.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/2yellowCoinWin.gif'))),
              )
            : context.watch<GameStatusProvider>().currentCannon ==
                    CannonType.purple
                ? Container(
                    height: 30.0,
                    width: 30.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/4pinkCoinWin.gif'))),
                  )
                //// else cannon type is flashing
                : context.watch<GameStatusProvider>().currentCannon ==
                        CannonType.blue
                    ? Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage('images/3greenCoinWin2.gif'))),
                      )
                    : context.watch<GameStatusProvider>().currentCannon ==
                            CannonType.flashing
                        ? Container(
                            height: 30.0,
                            width: 30.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'images/5redCoinWinEffect.gif'))),
                          )
                        : context.watch<GameStatusProvider>().currentCannon ==
                                CannonType.black
                            ? Container(
                                height: 30.0,
                                width: 30.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'images/6blackCoinWin.gif'))),
                              )
                            : Container(
                                height: 30.0,
                                width: 30.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'images/7whiteCoinWin.gif'))),
                              );
  }
}
