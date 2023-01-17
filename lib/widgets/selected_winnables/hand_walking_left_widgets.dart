import 'package:flappy_taco/constants.dart';
import 'package:flappy_taco/providers/game_status_provider.dart';
import 'package:flappy_taco/providers/premium_content_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HandWalkingLeftWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return context.read<PremiumContentProvider>().activatedSkeletonHand == true
        ? kThingWalkingLeftSkeletonOnly
        : kThingWalkingLeftSkeletonAndSkinCombo;
  }
}
