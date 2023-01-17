import 'package:flappy_taco/providers/premium_content_provider.dart';
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
        ? context.watch<PremiumContentProvider>().activatedExplodingAmmo ==
                false
            ? Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/coinWin.gif'))),
              )
            : Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/x2Explosion.gif'))),
              )
        : context.watch<GameStatusProvider>().currentCannon == CannonType.yellow
            ? context.watch<PremiumContentProvider>().activatedExplodingAmmo ==
                    false
                ? Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/2yellowCoinWin.gif'))),
                  )
                : Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/x2ExplosionYellow.gif'))),
                  )
            : context.watch<GameStatusProvider>().currentCannon ==
                    CannonType.purple
                ? context
                            .watch<PremiumContentProvider>()
                            .activatedExplodingAmmo ==
                        false
                    ? Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage('images/x2ExplosionGreen.gif'))),
                      )
                    : Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'images/x2ExplosionBluePurple.gif'))),
                      )
                //// else cannon type is flashing
                : context.watch<GameStatusProvider>().currentCannon ==
                        CannonType.blue
                    ? context
                                .watch<PremiumContentProvider>()
                                .activatedExplodingAmmo ==
                            false
                        ? Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'images/3greenCoinWin2.gif'))),
                          )
                        : Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'images/x2ExplosionGreenPurple.gif'))),
                          )
                    : context.watch<GameStatusProvider>().currentCannon ==
                            CannonType.flashing
                        ? context
                                    .watch<PremiumContentProvider>()
                                    .activatedExplodingAmmo ==
                                false
                            ? Container(
                                height: 40.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'images/5redCoinWinEffect.gif'))),
                              )
                            : Container(
                                height: 40.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'images/x2ExplosionRed.gif'))),
                              )
                        : context.watch<GameStatusProvider>().currentCannon ==
                                CannonType.black
                            ? context
                                        .watch<PremiumContentProvider>()
                                        .activatedExplodingAmmo ==
                                    false
                                ? Container(
                                    height: 40.0,
                                    width: 40.0,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                'images/6blackCoinWin.gif'))),
                                  )
                                : Container(
                                    height: 40.0,
                                    width: 40.0,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                'images/x2ExplosionBlack.gif'))),
                                  )
                            : context
                                        .watch<PremiumContentProvider>()
                                        .activatedExplodingAmmo ==
                                    false
                                ? Container(
                                    height: 40.0,
                                    width: 40.0,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                'images/7whiteCoinWin.gif'))),
                                  )
                                : Container(
                                    height: 40.0,
                                    width: 40.0,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                'images/x2ExplosionWhite.gif'))),
                                  );
  }
}
