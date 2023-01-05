import 'package:flappy_taco/providers/premium_content_provider.dart';
import 'package:flappy_taco/widgets/flashing_text_widget.dart';
import 'package:flappy_taco/widgets/openable_chest_widget.dart';
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
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
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
                                    FlashingText(text: 'Do it do it do it'),
                                  ],
                                ),
                              ),
                            ),
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
                            // GestureDetector(
                            //   onTap: () {
                            //     Navigator.pop(context);
                            //     Scaffold.of(context).openEndDrawer();
                            //   },
                            //   child: Icon(
                            //     Icons.settings,
                            //     size: 50.0,
                            //     color: Colors.white24,
                            //   ),
                            // ),
                            Icon(
                              Icons.info_outline,
                              size: 50.0,
                              color: Colors.white24,
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
