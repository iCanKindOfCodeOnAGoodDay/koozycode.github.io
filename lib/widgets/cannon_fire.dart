import 'package:flappy_taco/providers/premium_content_provider.dart';
import 'package:flappy_taco/widgets/fast_flying_rotating_icecream_bullet_widget.dart';
import 'package:flappy_taco/widgets/ice_cream_bullet.dart';
import 'package:flappy_taco/widgets/rotating_icecream_bullet_widget.dart';
import 'package:flappy_taco/widgets/selected_winnables/20mm_bullet_widget.dart';
import 'package:flappy_taco/widgets/selected_winnables/40MM_bullet_widget.dart';
import 'package:flappy_taco/widgets/selected_winnables/color_changing_bullet_widget.dart';
import 'package:flappy_taco/widgets/selected_winnables/fish_bullet_widget.dart';
import 'package:flappy_taco/widgets/selected_winnables/original_fireball_widgets.dart';
import 'package:flappy_taco/widgets/selected_winnables/trump_bullet_widget.dart';
import 'package:flappy_taco/widgets/winnables/shank_shooter_bullet_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flappy_taco/providers/game_status_provider.dart';

class CannonFire extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return context.watch<PremiumContentProvider>().activatedShankShooter ==
            false
        ? context.watch<PremiumContentProvider>().activatedTrumpAmmo == true
            ? TrumpBulletWidget()
            : context.watch<PremiumContentProvider>().activatedFishAmmo == true
                ? FishBulletWidget()
                : context.watch<PremiumContentProvider>().activated20MMAmmo ==
                        true
                    ? TwentyMMBullet()
                    : context
                                .watch<PremiumContentProvider>()
                                .activated40MMAmmo ==
                            true
                        ? FortyMMBullet()
                        : context
                                    .watch<PremiumContentProvider>()
                                    .activatedColorChangingBullets ==
                                true
                            ? ColorChangingBullet()
                            :
                            // OriginalFireBallWidgets()
                            context
                                        .watch<PremiumContentProvider>()
                                        .activatedFireBallAmmo ==
                                    true
                                ? OriginalFireBallWidgets()
                                : FastRotatingIcecreamBullet(
                                    path:
                                        '${context.watch<GameStatusProvider>().iceCreamBulletPath}',
                                    height: 40.0,
                                    width: 40.0,
                                  )
        : ShankShooterBullet();
  }
}

//
// class CannonFire extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return context.watch<GameStatusProvider>().currentCannon ==
//             CannonType.orange
//         ? Container(
//             height: 30.0,
//             width: 30.0,
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//                     fit: BoxFit.cover,
//                     image: AssetImage('images/fireball6.png'))),
//           )
//         : context.watch<GameStatusProvider>().currentCannon == CannonType.yellow
//             ? Container(
//                 height: 30.0,
//                 width: 30.0,
//                 decoration: BoxDecoration(
//                     image: DecorationImage(
//                         fit: BoxFit.cover,
//                         image: AssetImage('images/fireball6Yellow.png'))),
//               )
//             : context.watch<GameStatusProvider>().currentCannon ==
//                     CannonType.purple
//                 ? Container(
//                     height: 30.0,
//                     width: 30.0,
//                     decoration: BoxDecoration(
//                         image: DecorationImage(
//                             fit: BoxFit.cover,
//                             image: AssetImage('images/1flyingPink.png'))),
//                   )
//                 //// else cannon type is flashing
//                 : context.watch<GameStatusProvider>().currentCannon ==
//                         CannonType.blue
//                     ? Container(
//                         height: 30.0,
//                         width: 30.0,
//                         decoration: BoxDecoration(
//                             image: DecorationImage(
//                                 fit: BoxFit.cover,
//                                 image: AssetImage('images/fireball6Blue.png'))),
//                       )
//                     : context.watch<GameStatusProvider>().currentCannon ==
//                             CannonType.flashing
//                         ? Container(
//                             height: 30.0,
//                             width: 30.0,
//                             decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                     fit: BoxFit.cover,
//                                     image:
//                                         AssetImage('images/fireBallXX.gif'))),
//                           )
//                         : context.watch<GameStatusProvider>().currentCannon ==
//                                 CannonType.black
//                             ? Container(
//                                 height: 30.0,
//                                 width: 30.0,
//                                 decoration: BoxDecoration(
//                                     image: DecorationImage(
//                                         fit: BoxFit.cover,
//                                         image: AssetImage(
//                                             'images/flyingBlack.png'))),
//                               )
//                             : Container(
//                                 height: 30.0,
//                                 width: 30.0,
//                                 decoration: BoxDecoration(
//                                     image: DecorationImage(
//                                         fit: BoxFit.cover,
//                                         image: AssetImage(
//                                             'images/flyingWhite.png'))),
//                               );
//   }
// }
