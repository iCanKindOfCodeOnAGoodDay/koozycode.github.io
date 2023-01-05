import 'package:flappy_taco/providers/premium_content_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OpenableChest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 500.0,
          height: 250.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      'images/${context.watch<PremiumContentProvider>().pathToChangeChestImageFromClosedToOpen}'))),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: context
                            .watch<PremiumContentProvider>()
                            .shouldHideTheLastPrize ==
                        true
                    ? 0.0
                    : context
                        .watch<PremiumContentProvider>()
                        .widthOfNewItemForAnimationWhenOpeningChest,
                height: context
                            .watch<PremiumContentProvider>()
                            .shouldHideTheLastPrize ==
                        true
                    ? 0.0
                    : context
                        .watch<PremiumContentProvider>()
                        .heightOfNewItemForAnimationWhenOpeningChest,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage(
                            'images/${context.watch<PremiumContentProvider>().pathToNewItemFromChest}'))),
              ),
              SizedBox(
                height: context
                    .watch<PremiumContentProvider>()
                    .heightOfNewItemForAnimationWhenOpeningChest,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
