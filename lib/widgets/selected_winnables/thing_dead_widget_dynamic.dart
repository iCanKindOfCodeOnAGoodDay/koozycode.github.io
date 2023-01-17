import 'package:flappy_taco/constants.dart';
import 'package:flappy_taco/providers/premium_content_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThingDeadDynamicWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return context.watch<PremiumContentProvider>().activatedSkeletonHand == true
        ? kThingDeadSkeleton
        : kThingDead;
  }
}
