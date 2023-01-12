import 'package:flappy_taco/providers/game_status_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/premium_content_provider.dart';

class PremiumGatsAndGrenades extends StatelessWidget {
  String path;
  PremiumContentType type;

  PremiumGatsAndGrenades({required this.path, required this.type});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<GameStatusProvider>().reloadHellFire();

        context
            .read<PremiumContentProvider>()
            .handleAnimationWhenSelectingAnItemFromList(path);
        if (type == PremiumContentType.gat) {
          context.read<PremiumContentProvider>().changeGat('$path');
        } else if (type == PremiumContentType.grenade) {
          /// todo create property to hold grenade string file path
          context.read<PremiumContentProvider>().changeGrenade('$path');
        } else if (type == PremiumContentType.beast) {
          context.read<PremiumContentProvider>().changeBeast('$path');
        } else if (type == PremiumContentType.shank) {
          context.read<PremiumContentProvider>().changeKnife('$path');
        } else if (type == PremiumContentType.console) {
          context.read<PremiumContentProvider>().changeConsole('$path');
        } else if (type == PremiumContentType.rocket) {
          context.read<PremiumContentProvider>().changeRocket('$path');
        }
      },
      child: Container(
        height: 50.0,
        width: type == PremiumContentType.gat ? 90.0 : 50.0,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.contain, image: AssetImage('images/$path'))),
      ),
    );
  }
}
