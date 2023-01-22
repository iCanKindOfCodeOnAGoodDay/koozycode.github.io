import 'package:flappy_taco/constants.dart';
import 'package:flappy_taco/providers/premium_content_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThingWalkingDynamicWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return context.watch<PremiumContentProvider>().activatedSkeletonHand == true
        ? kThingFallingSkeleton
        : Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        'images/${context.watch<PremiumContentProvider>().pathToSelectedWalkingHand}'))),
          );
  }
}
