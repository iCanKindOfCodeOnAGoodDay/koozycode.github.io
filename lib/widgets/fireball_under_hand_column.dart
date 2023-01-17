import 'package:flappy_taco/providers/game_status_provider.dart';
import 'package:flappy_taco/providers/premium_content_provider.dart';
import 'package:flappy_taco/widgets/cannon_ammunition_widget.dart';
import 'package:flappy_taco/widgets/coin_win_effect.dart';
import 'package:flappy_taco/widgets/winnables/exploding_recoil_under_hand_widgets.dart';
import 'package:flappy_taco/widgets/winnables/exploding_recoil_under_hand_widgets.dart';
import 'package:flappy_taco/widgets/winnables/exploding_recoil_under_hand_widgets.dart';
import 'package:flappy_taco/widgets/winnables/exploding_recoil_under_hand_widgets.dart';
import 'package:flappy_taco/widgets/winnables/exploding_recoil_under_hand_widgets.dart';
import 'package:flappy_taco/widgets/winnables/exploding_recoil_under_hand_widgets.dart';
import 'package:flappy_taco/widgets/winnables/exploding_recoil_under_hand_widgets.dart';
import 'package:flappy_taco/widgets/winnables/exploding_recoil_under_hand_widgets.dart';
import 'package:flappy_taco/widgets/winnables/exploding_recoil_under_hand_widgets.dart';
import 'package:flappy_taco/widgets/winnables/exploding_recoil_under_hand_widgets.dart';
import 'package:flappy_taco/widgets/winnables/exploding_recoil_under_hand_widgets.dart';
import 'package:flappy_taco/widgets/winnables/shell_casings_under_hand_effect_widget.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'package:provider/provider.dart';

class CoinsUnderHandColumn extends StatelessWidget {
  int position = 6;

  CoinsUnderHandColumn({required this.position});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        position == 11
            ? context
                        .watch<PremiumContentProvider>()
                        .activatedShellCasingsInsteadOfSparks ==
                    false
                ? ExplodingRecoilUnderHand()
                : ShellCasingWidgets()
            : Icon(
                Icons.circle,
                color: kBlankColor,
                size: 40.0,
              ),
        position == 10
            ? context
                        .watch<PremiumContentProvider>()
                        .activatedShellCasingsInsteadOfSparks ==
                    false
                ? ExplodingRecoilUnderHand()
                : ShellCasingWidgets()
            : Icon(
                Icons.circle,
                color: kBlankColor,
                size: 40.0,
              ),
        position == 9
            ? context
                        .watch<PremiumContentProvider>()
                        .activatedShellCasingsInsteadOfSparks ==
                    false
                ? ExplodingRecoilUnderHand()
                : ShellCasingWidgets()
            : Icon(
                Icons.circle,
                color: kBlankColor,
                size: 40.0,
              ),
        position == 8
            ? context
                        .watch<PremiumContentProvider>()
                        .activatedShellCasingsInsteadOfSparks ==
                    false
                ? ExplodingRecoilUnderHand()
                : ShellCasingWidgets()
            : Icon(
                Icons.circle,
                color: kBlankColor,
                size: 40.0,
              ),
        position == 7
            ? context
                        .watch<PremiumContentProvider>()
                        .activatedShellCasingsInsteadOfSparks ==
                    false
                ? ExplodingRecoilUnderHand()
                : ShellCasingWidgets()
            : Icon(
                Icons.circle,
                color: kBlankColor,
                size: 40.0,
              ),
        position == 6
            ? context
                        .watch<PremiumContentProvider>()
                        .activatedShellCasingsInsteadOfSparks ==
                    false
                ? ExplodingRecoilUnderHand()
                : ShellCasingWidgets()
            : Icon(
                Icons.circle,
                color: kBlankColor,
                size: 40.0,
              ),
        position == 5
            ? context
                        .watch<PremiumContentProvider>()
                        .activatedShellCasingsInsteadOfSparks ==
                    false
                ? ExplodingRecoilUnderHand()
                : ShellCasingWidgets()
            : Icon(
                Icons.circle,
                color: kBlankColor,
                size: 40.0,
              ),
        position == 4
            ? context
                        .watch<PremiumContentProvider>()
                        .activatedShellCasingsInsteadOfSparks ==
                    false
                ? ExplodingRecoilUnderHand()
                : ShellCasingWidgets()
            : Icon(
                Icons.circle,
                color: kBlankColor,
                size: 40.0,
              ),
        position == 3
            ? context
                        .watch<PremiumContentProvider>()
                        .activatedShellCasingsInsteadOfSparks ==
                    false
                ? ExplodingRecoilUnderHand()
                : ShellCasingWidgets()
            : Icon(
                Icons.circle,
                color: kBlankColor,
                size: 40.0,
              ),
        position == 2
            ? context
                        .watch<PremiumContentProvider>()
                        .activatedShellCasingsInsteadOfSparks ==
                    false
                ? ExplodingRecoilUnderHand()
                : ShellCasingWidgets()
            : Icon(
                Icons.circle,
                color: kBlankColor,
                size: 40.0,
              ),
        position == 1
            ? context
                        .watch<PremiumContentProvider>()
                        .activatedShellCasingsInsteadOfSparks ==
                    false
                ? ExplodingRecoilUnderHand()
                : ShellCasingWidgets()
            : Icon(
                Icons.circle,
                color: kBlankColor,
                size: 40.0,
              ),
        // position == 0
        //     ? context.watch<GameStatusProvider>().isClimbing == true
        //         ? kThing
        //         : kThingFalling
        //     : Icon(
        //         Icons.circle,
        //         color: position == 11 ? kBlankSquare : kBlankColor,
        //         size: 40.0,
        //       ),
      ],
    );
  }
}
