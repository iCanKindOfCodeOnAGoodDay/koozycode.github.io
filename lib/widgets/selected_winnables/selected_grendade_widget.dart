import 'package:flappy_taco/providers/premium_content_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SelectedGrenadeWidget extends StatelessWidget {
  bool onScreenPickupAndNotAGrenadeButton = true;
  SelectedGrenadeWidget({required this.onScreenPickupAndNotAGrenadeButton});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: onScreenPickupAndNotAGrenadeButton == false ? 70.0 : 40.0,
      width: onScreenPickupAndNotAGrenadeButton == false ? 70.0 : 40.0,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage(
                  'images/${context.watch<PremiumContentProvider>().playersGrenadeChoiceString}'))),
    );
  }
}
