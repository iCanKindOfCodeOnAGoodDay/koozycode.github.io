import 'package:flappy_taco/providers/premium_content_provider.dart';
import 'package:flappy_taco/widgets/flashing_text_widget.dart';
import 'package:flutter/material.dart';

import 'package:flappy_taco/models/sound_model.dart';
import 'package:flappy_taco/providers/game_status_provider.dart';
import 'package:provider/provider.dart';

SoundModel soundModel = SoundModel();

class EndDrawerCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 200.0,
      // color: Colors.black,
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                // color: Colors.red,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          'images/${context.watch<PremiumContentProvider>().pathToSelectedBackgroundImage}')),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // color: Colors.black,
                    // decoration: BoxDecoration(
                    //   image: DecorationImage(
                    //       fit: BoxFit.cover,
                    //       image: AssetImage('images/redChip.jpg')),
                    // ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // SizedBox(
                            //   height: 20.0,
                            // ),
                            Text(
                              'Armory:',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            GestureDetector(
                              onTap: () {
                                Scaffold.of(context).openDrawer();
                              },
                              child: Column(
                                children: [
                                  Container(
                                    height: 100.0,
                                    width: 200.0,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.contain,
                                            image: AssetImage(
                                                'images/${context.watch<PremiumContentProvider>().playersGatChoiceString}'))),
                                  ),
                                  Container(
                                    height: 100.0,
                                    width: 200.0,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.contain,
                                            image: AssetImage(
                                                'images/${context.watch<PremiumContentProvider>().pathToSelectedKnife}'))),
                                  ),
                                  Container(
                                    height: 100.0,
                                    width: 200.0,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.contain,
                                            image: AssetImage(
                                                'images/${context.watch<PremiumContentProvider>().pathToSelectedBeast}'))),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          context
                                              .read<PremiumContentProvider>()
                                              .changeConsoleForTestingBackwards();
                                        },
                                        child: Icon(
                                          Icons.arrow_circle_left_outlined,
                                          size: 50.0,
                                          color: Colors.orange,
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            height: 100.0,
                                            width: 100.0,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    fit: BoxFit.contain,
                                                    image: AssetImage(
                                                        'images/${context.watch<PremiumContentProvider>().pathToSelectedGameConsole}'))),
                                          ),
                                          Text(
                                            'Premium',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Text(
                                            'Consoles',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Text(
                                            '\$7.99',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                                color: Colors.black),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                'buy now',
                                                style: TextStyle(
                                                    fontSize: 20.0,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          context
                                              .read<PremiumContentProvider>()
                                              .changeConsoleForTesting();
                                        },
                                        child: Icon(
                                          Icons.arrow_circle_right_outlined,
                                          size: 50.0,
                                          color: Colors.orange,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 150.0,
                              width: 200.0,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            'Shank Shooter',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.info_outline,
                                                color: Colors.orange,
                                                size: 40.0,
                                              ),
                                              Text(
                                                '\$13.99',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ],
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              context
                                                  .read<
                                                      PremiumContentProvider>()
                                                  .toggleShankShooter();
                                            },
                                            child: context
                                                        .watch<
                                                            PremiumContentProvider>()
                                                        .activatedShankShooter ==
                                                    false
                                                ? Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                        color: Colors.black),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        'activate',
                                                        style: TextStyle(
                                                            fontSize: 20.0,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
                                                      ),
                                                    ),
                                                  )
                                                : Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                        color: Colors.red),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        'de-activate',
                                                        style: TextStyle(
                                                            fontSize: 20.0,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
                                                      ),
                                                    ),
                                                  ),
                                          ),
                                        ],
                                      ),
                                      Icon(
                                        Icons.arrow_circle_right_outlined,
                                        size: 50.0,
                                        color: Colors.green,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            'Exploding Ammo',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.info_outline,
                                                color: Colors.orange,
                                                size: 40.0,
                                              ),
                                              Text(
                                                '\$13.99',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ],
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              context
                                                  .read<
                                                      PremiumContentProvider>()
                                                  .toggleExplodingAmmo();
                                            },
                                            child: context
                                                        .watch<
                                                            PremiumContentProvider>()
                                                        .activatedExplodingAmmo ==
                                                    false
                                                ? Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                        color: Colors.black),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        'activate',
                                                        style: TextStyle(
                                                            fontSize: 20.0,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
                                                      ),
                                                    ),
                                                  )
                                                : Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                        color: Colors.red),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        'de-activate',
                                                        style: TextStyle(
                                                            fontSize: 20.0,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
                                                      ),
                                                    ),
                                                  ),
                                          ),
                                        ],
                                      ),
                                      Icon(
                                        Icons.arrow_circle_right_outlined,
                                        size: 50.0,
                                        color: Colors.green,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            'Shell Casings',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.info_outline,
                                                color: Colors.orange,
                                                size: 40.0,
                                              ),
                                              Text(
                                                '\$3.99',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ],
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              context
                                                  .read<
                                                      PremiumContentProvider>()
                                                  .toggleShellCasingsInsteadOfSparks();
                                            },
                                            child: context
                                                        .watch<
                                                            PremiumContentProvider>()
                                                        .activatedShellCasingsInsteadOfSparks ==
                                                    false
                                                ? Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                        color: Colors.black),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        'activate',
                                                        style: TextStyle(
                                                            fontSize: 20.0,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
                                                      ),
                                                    ),
                                                  )
                                                : Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                        color: Colors.red),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        'de-activate',
                                                        style: TextStyle(
                                                            fontSize: 20.0,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
                                                      ),
                                                    ),
                                                  ),
                                          ),
                                        ],
                                      ),
                                      Icon(
                                        Icons.arrow_circle_right_outlined,
                                        size: 50.0,
                                        color: Colors.green,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            'Exploding Recoil',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.info_outline,
                                                color: Colors.orange,
                                                size: 40.0,
                                              ),
                                              Text(
                                                '\$9.99',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ],
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              context
                                                  .read<
                                                      PremiumContentProvider>()
                                                  .toggleExplodingRecoil();
                                            },
                                            child: context
                                                        .watch<
                                                            PremiumContentProvider>()
                                                        .activatedExplodingRecoil ==
                                                    false
                                                ? Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                        color: Colors.black),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        'activate',
                                                        style: TextStyle(
                                                            fontSize: 20.0,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
                                                      ),
                                                    ),
                                                  )
                                                : Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                        color: Colors.red),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        'de-activate',
                                                        style: TextStyle(
                                                            fontSize: 20.0,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
                                                      ),
                                                    ),
                                                  ),
                                          ),
                                        ],
                                      ),
                                      Icon(
                                        Icons.arrow_circle_right_outlined,
                                        size: 50.0,
                                        color: Colors.green,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            'Skeleton Hand',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.info_outline,
                                                color: Colors.orange,
                                                size: 40.0,
                                              ),
                                              Text(
                                                '\$13.99',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ],
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              context
                                                  .read<
                                                      PremiumContentProvider>()
                                                  .toggleSkeletonHand();
                                            },
                                            child: context
                                                        .watch<
                                                            PremiumContentProvider>()
                                                        .activatedSkeletonHand ==
                                                    false
                                                ? Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                        color: Colors.black),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        'activate',
                                                        style: TextStyle(
                                                            fontSize: 20.0,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
                                                      ),
                                                    ),
                                                  )
                                                : Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                        color: Colors.red),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        'de-activate',
                                                        style: TextStyle(
                                                            fontSize: 20.0,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
                                                      ),
                                                    ),
                                                  ),
                                          ),
                                        ],
                                      ),
                                      Icon(
                                        Icons.arrow_circle_right_outlined,
                                        size: 50.0,
                                        color: Colors.green,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            '20MM Ammo',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.info_outline,
                                                color: Colors.orange,
                                                size: 40.0,
                                              ),
                                              Text(
                                                '\$3.99',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ],
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              context
                                                  .read<
                                                      PremiumContentProvider>()
                                                  .toggle20MMAmmo();
                                            },
                                            child: context
                                                        .watch<
                                                            PremiumContentProvider>()
                                                        .activated20MMAmmo ==
                                                    false
                                                ? Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                        color: Colors.black),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        'activate',
                                                        style: TextStyle(
                                                            fontSize: 20.0,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
                                                      ),
                                                    ),
                                                  )
                                                : Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                        color: Colors.red),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        'de-activate',
                                                        style: TextStyle(
                                                            fontSize: 20.0,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
                                                      ),
                                                    ),
                                                  ),
                                          ),
                                        ],
                                      ),
                                      Icon(
                                        Icons.arrow_circle_right_outlined,
                                        size: 50.0,
                                        color: Colors.green,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            '40MM Ammo',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.info_outline,
                                                color: Colors.orange,
                                                size: 40.0,
                                              ),
                                              Text(
                                                '\$3.99',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ],
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              context
                                                  .read<
                                                      PremiumContentProvider>()
                                                  .toggle40MMAmmo();
                                            },
                                            child: context
                                                        .watch<
                                                            PremiumContentProvider>()
                                                        .activated40MMAmmo ==
                                                    false
                                                ? Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                        color: Colors.black),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        'activate',
                                                        style: TextStyle(
                                                            fontSize: 20.0,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
                                                      ),
                                                    ),
                                                  )
                                                : Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                        color: Colors.red),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        'de-activate',
                                                        style: TextStyle(
                                                            fontSize: 20.0,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
                                                      ),
                                                    ),
                                                  ),
                                          ),
                                        ],
                                      ),
                                      Icon(
                                        Icons.arrow_circle_right_outlined,
                                        size: 50.0,
                                        color: Colors.green,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            'Colorful Ammo',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.info_outline,
                                                color: Colors.orange,
                                                size: 40.0,
                                              ),
                                              Text(
                                                '\$7.99',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ],
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              context
                                                  .read<
                                                      PremiumContentProvider>()
                                                  .toggleColorChangingAmmo();
                                            },
                                            child: context
                                                        .watch<
                                                            PremiumContentProvider>()
                                                        .activatedColorChangingBullets ==
                                                    false
                                                ? Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                        color: Colors.black),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        'activate',
                                                        style: TextStyle(
                                                            fontSize: 20.0,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
                                                      ),
                                                    ),
                                                  )
                                                : Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                        color: Colors.red),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        'de-activate',
                                                        style: TextStyle(
                                                            fontSize: 20.0,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
                                                      ),
                                                    ),
                                                  ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Effects',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20.0),
                                    ),
                                    // SizedBox(
                                    //   height: 50.0,
                                    // ),
                                    Container(
                                      child: context
                                                  .watch<GameStatusProvider>()
                                                  .hearSoundEffects ==
                                              false
                                          ? GestureDetector(
                                              onTap: () {
                                                // soundModel.turnOnSoundEffects();
                                                // soundModel.playReloadSound();
                                                context
                                                    .read<GameStatusProvider>()
                                                    .turnOnSoundEffects();
                                              },
                                              child: Icon(
                                                Icons
                                                    .play_circle_outline_outlined,
                                                size: 50.0,
                                                color: context
                                                            .watch<
                                                                GameStatusProvider>()
                                                            .hearSoundEffects ==
                                                        true
                                                    ? Colors.white
                                                    : Colors.white,
                                              ),
                                            )
                                          : GestureDetector(
                                              onTap: () {
                                                // soundModel.turnOffSoundEffects();
                                                context
                                                    .read<GameStatusProvider>()
                                                    .turnOffSoundEffects();
                                              },
                                              child: Icon(
                                                Icons.pause_circle_outline,
                                                size: 50.0,
                                                color: context
                                                            .watch<
                                                                GameStatusProvider>()
                                                            .hearSoundEffects ==
                                                        false
                                                    ? Colors.white
                                                    : Colors.white,
                                              ),
                                            ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 50.0,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Music',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20.0),
                                    ),
                                    Container(
                                      child: Container(
                                        child: context
                                                    .watch<GameStatusProvider>()
                                                    .hearBackgroundMusic ==
                                                false
                                            ? GestureDetector(
                                                onTap: () {
                                                  // soundModel.disposeMusicSoundPlayer();
                                                  context
                                                      .read<
                                                          GameStatusProvider>()
                                                      .setBackgroundMusicToTrue();
                                                  soundModel.playSpookyMusic(
                                                      context
                                                          .read<
                                                              GameStatusProvider>()
                                                          .hearBackgroundMusic);
                                                  soundModel.playLoopSizzleSound(
                                                      context
                                                          .read<
                                                              GameStatusProvider>()
                                                          .hearBackgroundMusic);
                                                  // soundModel.playCreapyWingsSound(
                                                  //     context.read<GameStatusProvider>().hearBackgroundMusic);
                                                  soundModel.playLoopElectricChair(
                                                      context
                                                          .read<
                                                              GameStatusProvider>()
                                                          .hearBackgroundMusic);
                                                  // soundModel.playScreechSound(
                                                  //     context.read<GameStatusProvider>().hearBackgroundMusic);
                                                  soundModel.playLoopFireworksSounds(
                                                      context
                                                          .read<
                                                              GameStatusProvider>()
                                                          .hearBackgroundMusic);
                                                },
                                                child: Icon(
                                                  Icons
                                                      .play_circle_outline_outlined,
                                                  size: 50.0,
                                                  color: context
                                                              .watch<
                                                                  GameStatusProvider>()
                                                              .hearBackgroundMusic ==
                                                          false
                                                      ? Colors.white
                                                      : Colors.white,
                                                ),
                                              )
                                            : GestureDetector(
                                                onTap: () {
                                                  context
                                                      .read<
                                                          GameStatusProvider>()
                                                      .setBackgroundMusicToFalse();
                                                  // soundModel.disposeMusicSoundPlayer();
                                                  soundModel.killSpookyMusic();
                                                  soundModel
                                                      .killLoopElectricChair();
                                                  soundModel
                                                      .killLoopFireworksSoundsPlayer();
                                                  soundModel
                                                      .killLoopSizzleSound();
                                                },
                                                child: Icon(
                                                  Icons.pause_circle_outline,
                                                  size: 50.0,
                                                  color: context
                                                              .watch<
                                                                  GameStatusProvider>()
                                                              .hearBackgroundMusic ==
                                                          false
                                                      ? Colors.white
                                                      : Colors.white,
                                                ),
                                              ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    context
                                        .read<PremiumContentProvider>()
                                        .changeBarrier();
                                  },
                                  child: Container(
                                    height: 150.0,
                                    width: 150.0,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'images/${context.watch<PremiumContentProvider>().pathToSelectedBarrier}'))),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    context
                                        .read<PremiumContentProvider>()
                                        .changeBarrier();
                                  },
                                  child: Icon(
                                    Icons.swap_calls,
                                    size: 50.0,
                                    color: Colors.white,
                                  ),
                                ),
                                FlashingText(text: 'FREE'),
                                FlashingText(text: 'MONSTERS'),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    context
                                        .read<PremiumContentProvider>()
                                        .changeBarrier();
                                  },
                                  child: Container(
                                    height: 150.0,
                                    width: 150.0,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'images/${context.watch<PremiumContentProvider>().pathToSelectedBarrier}'))),
                                  ),
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        context
                                            .read<PremiumContentProvider>()
                                            .changeBarrier();
                                      },
                                      child: Icon(
                                        Icons.arrow_circle_left_outlined,
                                        size: 50.0,
                                        color: Colors.orange,
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'Premium',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text(
                                          'Monsters',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text(
                                          '\$7.99',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              color: Colors.black),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'buy now',
                                              style: TextStyle(
                                                  fontSize: 20.0,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        context
                                            .read<PremiumContentProvider>()
                                            .changeBarrier();
                                      },
                                      child: Icon(
                                        Icons.arrow_circle_right_outlined,
                                        size: 50.0,
                                        color: Colors.orange,
                                      ),
                                    ),
                                  ],
                                ),
                                // FlashingText(text: 'FREE'),
                                // FlashingText(text: 'MONSTERS'),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(
                                    Icons.cancel_outlined,
                                    size: 50.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.red),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'logout?',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 10.0,
              // ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Themes:',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 20.0),
                      ),
                      GestureDetector(
                        onTap: context.watch<GameStatusProvider>().crashed ==
                                false
                            ? () {
                                context
                                    .read<PremiumContentProvider>()
                                    .changeBackgroundImageHorror(true);
                                print(
                                    'change the background image to previous');
                              }
                            : () {
                                print('do something');

                                context.read<GameStatusProvider>().resetGame();
                                context.read<GameStatusProvider>().start();
                                context.read<GameStatusProvider>().handFall();
                                context.read<GameStatusProvider>().pauseGame();

                                context
                                    .read<PremiumContentProvider>()
                                    .changeBackgroundImageHorror(true);
                                print(
                                    'change the background image to horror previous');
                              },
                        child: Icon(
                          Icons.arrow_circle_left_outlined,
                          size: 50.0,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // Text(
                      //   'Theme:',
                      //   style: TextStyle(
                      //       color: Colors.white,
                      //       fontWeight: FontWeight.w900,
                      //       fontSize: 20.0),
                      // ),
                      GestureDetector(
                        onTap: context.watch<GameStatusProvider>().crashed ==
                                false
                            ? () {
                                context
                                    .read<PremiumContentProvider>()
                                    .changeBackgroundImageHorror(false);
                                print('change the background image');
                              }
                            : () {
                                print('do something');

                                context.read<GameStatusProvider>().resetGame();
                                context.read<GameStatusProvider>().start();
                                context.read<GameStatusProvider>().handFall();
                                context.read<GameStatusProvider>().pauseGame();

                                context
                                    .read<PremiumContentProvider>()
                                    .changeBackgroundImageHorror(false);
                                print('change the background image');
                              },
                        child: Icon(
                          Icons.arrow_circle_right_outlined,
                          size: 50.0,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Text(
              //           'Video Themes:',
              //           style: TextStyle(
              //               color: Colors.white,
              //               fontWeight: FontWeight.w900,
              //               fontSize: 20.0),
              //         ),
              //         GestureDetector(
              //           onTap: context.watch<GameStatusProvider>().crashed ==
              //                   false
              //               ? () {
              //                   context
              //                       .read<PremiumContentProvider>()
              //                       .changeBackgroundImage(true);
              //                   print(
              //                       'change the background image to previous');
              //                 }
              //               : () {
              //                   print('do something');
              //
              //                   context.read<GameStatusProvider>().resetGame();
              //                   context.read<GameStatusProvider>().start();
              //                   context.read<GameStatusProvider>().handFall();
              //                   context.read<GameStatusProvider>().pauseGame();
              //
              //                   context
              //                       .read<PremiumContentProvider>()
              //                       .changeBackgroundImage(true);
              //                   print(
              //                       'change the background image to previous');
              //                 },
              //           child: Icon(
              //             Icons.arrow_circle_left_outlined,
              //             size: 50.0,
              //             color: Colors.orange,
              //           ),
              //         ),
              //       ],
              //     ),
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.end,
              //       children: [
              //         // Text(
              //         //   'Theme:',
              //         //   style: TextStyle(
              //         //       color: Colors.white,
              //         //       fontWeight: FontWeight.w900,
              //         //       fontSize: 20.0),
              //         // ),
              //         GestureDetector(
              //           onTap: context.watch<GameStatusProvider>().crashed ==
              //                   false
              //               ? () {
              //                   context
              //                       .read<PremiumContentProvider>()
              //                       .changeBackgroundImage(false);
              //                   print('change the background image');
              //                 }
              //               : () {
              //                   print('do something');
              //
              //                   context.read<GameStatusProvider>().resetGame();
              //                   context.read<GameStatusProvider>().start();
              //                   context.read<GameStatusProvider>().handFall();
              //                   context.read<GameStatusProvider>().pauseGame();
              //
              //                   context
              //                       .read<PremiumContentProvider>()
              //                       .changeBackgroundImage(false);
              //                   print('change the background image');
              //                 },
              //           child: Icon(
              //             Icons.arrow_circle_right_outlined,
              //             size: 50.0,
              //             color: Colors.orange,
              //           ),
              //         ),
              //       ],
              //     ),
              //   ],
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
