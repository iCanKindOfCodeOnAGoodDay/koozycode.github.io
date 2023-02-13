import 'package:flappy_taco/providers/premium_content_provider.dart';
import 'package:flappy_taco/widgets/selected_winnables/selected_beast.dart';
import 'package:flappy_taco/widgets/selected_winnables/selected_gat.dart';
import 'package:flappy_taco/widgets/selected_winnables/selected_grendade_widget.dart';
import 'package:flappy_taco/widgets/selected_winnables/selected_knife_widget.dart';
import 'package:flappy_taco/widgets/winnables/popup_prize_message_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OpenableChest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
          tag: 'prize',
          child: Container(
            width: 500.0,
            height: 250.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'images/${context.watch<PremiumContentProvider>().pathToChangeChestImageFromClosedToOpen}'))),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Hero(
                tag: 'prize',
                child: Container(
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
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'images/ledScreenBackground.jpg')),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            child: Center(
                              child: Text(
                                'selected gat:',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      SelectedGat(),
                      // SizedBox(
                      //   height: 10.0,
                      // ),
                      // PopUpPrizeMessageWidget(),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'images/ledScreenBackground.jpg')),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            child: Center(
                              child: Text(
                                'grenade:',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      SelectedGrenadeWidget(
                        onScreenPickupAndNotAGrenadeButton: false,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'images/ledScreenBackground.jpg')),
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        'beast:',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              SelectedBeastWidget(),
                            ],
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'images/ledScreenBackground.jpg')),
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        'shank:',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              SelectedKnifeWidget(),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              // SizedBox(
              //   height: context
              //           .watch<PremiumContentProvider>()
              //           .heightOfNewItemForAnimationWhenOpeningChest /
              //       10,
              // ),
            ],
          ),
        ),
        Column(
          children: [
            /// show pop up message on the stack when the prize is finished opening!
            context
                        .watch<PremiumContentProvider>()
                        .heightOfNewItemForAnimationWhenOpeningChest >=
                    400
                ? PopUpPrizeMessageWidget()
                : Container(),
          ],
        ),
        Column(
          children: [
            // SizedBox(
            //   height: context
            //           .watch<PremiumContentProvider>()
            //           .heightOfNewItemForAnimationWhenOpeningChest /
            //       1.4,
            // ),
          ],
        ),
      ],
    );
  }
}
