import 'package:flappy_taco/providers/premium_content_provider.dart';
import 'package:flappy_taco/widgets/flashing_text_widget.dart';
import 'package:flappy_taco/widgets/openable_chest_widget.dart';
import 'package:flappy_taco/widgets/selected_winnables/selected_gat.dart';
import 'package:flappy_taco/widgets/winnables/winnable_beasts.dart';
import 'package:flappy_taco/widgets/winnables/winnable_consoles.dart';
import 'package:flappy_taco/widgets/winnables/winnable_shanks.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flappy_taco/constants.dart';

class ShopDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 40.0,
                                  width: 40.0,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage(
                                              'images/rubyColorGif.gif'))),
                                ),
                                Text(
                                  context
                                      .watch<PremiumContentProvider>()
                                      .amountOfRubiesReadyToUse
                                      .toString(),
                                  style: TextStyle(
                                      color: Colors.deepPurple,
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              'images/ledScreenBackground.jpg')),
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          'console:',
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
                                  width: 10.0,
                                ),
                                Container(
                                  height: 80,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'images/futuristicGameConsoleNoLogo2BLANKLOGO copy 3.png'))),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    FlashingText(
                                      text: 'Buy Rubies?',
                                    ),
                                    // FlashingText(text: 'Do it do it do it'),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(
                                    Icons.arrow_circle_left_outlined,
                                    size: 50.0,
                                    color: Colors.white24,
                                  ),
                                ),
                                Icon(
                                  Icons.info_outline,
                                  size: 50.0,
                                  color: Colors.white24,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ]),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    OpenableChest(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            context
                                .read<PremiumContentProvider>()
                                .openChestToGetRandomPrize();
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    FlashingText(
                                      text: 'Open Gangsta Gats Chest?',
                                    ),
                                  ],
                                )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'available:',
                          style: TextStyle(
                            color: Colors.deepPurple,
                          ),
                        ),
                        Column(
                          children: context
                              .watch<PremiumContentProvider>()
                              .availableGats,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'bloods:',
                          style: TextStyle(
                            color: Colors.deepPurple,
                          ),
                        ),
                        Column(children: [kBlood, kBlood, kBlood]),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'lifes:',
                          style: TextStyle(
                            color: Colors.deepPurple,
                          ),
                        ),
                        Column(children: [kThingFalling, kThingFalling]),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'what can you win?',
                          style: TextStyle(color: Colors.deepPurple),
                        ),
                        kThingDraco,
                        kThingBrightPistol,
                        kThingCaroleLynn,
                        kThingGrenadeLauncher,
                        kThingKeltechPistol,
                        kThingOutlineRay,
                        kThingPirate,
                        kThingShortM4,
                        kBlueGrenade,
                        kGrenade,
                        kSharkBomb,
                        kSciFiGrenade1,
                        kSciFiGrenade2,
                        kIcedGrenade,
                        kCherryBomb1,
                        kCherryBomb2,
                        kThingCapPishPish,
                        kThingDarrenger,
                        kThingGoldDeagle,
                        kThingSBR,
                        kThingToyM4,
                        kThingBlock9,
                        kAK47,
                        kCrazyDraco,
                        kM203,
                        kPurpleM4,
                        kRedM4,
                        kDoubleBarrel,
                        kSniperRifle,
                        WinnableBeastsWidgets(path: 'horseTransparent.gif'),

                        /// silver
                        WinnableConsoleWidgets(
                            path: 'futuristicGameConsoleNoLogo2BLANKLOGO.png'),
                        WinnableConsoleWidgets(
                            path:
                                'futuristicGameConsoleNoLogo2BLANKLOGO copy.png'),

                        /// black
                        WinnableConsoleWidgets(
                            path:
                                'futuristicGameConsoleNoLogo2BLANKLOGO copy 3.png'),
                        WinnableConsoleWidgets(
                            path:
                                'futuristicGameConsoleNoLogo2BLANKLOGOBrightYellow2.png'),
                        WinnableConsoleWidgets(
                            path:
                                'futuristicGameConsoleNoLogo2BLANKLOGOPurp.png'),
                        WinnableShankWidgets(path: 'xxDuctTapeKnife.gif'),
                        WinnableShankWidgets(path: 'xxBatNails.gif'),
                        WinnableShankWidgets(path: 'xxBrokenBottle.gif'),
                        WinnableShankWidgets(path: 'xxCleaver.gif'),
                        WinnableShankWidgets(path: 'xxHammer.gif'),
                        WinnableShankWidgets(path: 'xxKnuckleBlade.gif'),
                        WinnableShankWidgets(path: 'xxNinjaStar.gif'),
                        WinnableShankWidgets(path: 'xxRedKnucks.gif'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
