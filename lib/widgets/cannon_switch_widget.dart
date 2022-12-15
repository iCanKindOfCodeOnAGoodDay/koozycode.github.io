import 'package:flappy_taco/constants.dart';
import 'package:flappy_taco/widgets/cannon_ammunition_next_pickup.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flappy_taco/providers/game_status_provider.dart';

class CannonSwitch extends StatelessWidget {
  bool cannonIsLoaded = true;
  int remainingAmmo = 20;

  CannonSwitch({required this.cannonIsLoaded, required this.remainingAmmo});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'x$remainingAmmo',
            style: TextStyle(
                color: Colors.white70,
                fontSize: 10.0,
                fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  // context.read<GameStatusProvider>().unloadHellFire();

                  // context.read<GameStatusProvider>().switchCannon();

                  /// toggle switch
                },
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: context.watch<GameStatusProvider>().fullyLoaded ==
                              true
                          ? Colors.white24
                          : context
                                      .watch<GameStatusProvider>()
                                      .roundsInMagazine ==
                                  0
                              ? Colors.redAccent
                              : Colors.yellow),
                ),
              ),
              GestureDetector(
                onLongPress: () {
                  context.read<GameStatusProvider>().reloadHellFire();
                },
                onTap: () {
                  context.read<GameStatusProvider>().reloadHellFire();
                  // context.read<GameStatusProvider>().switchCannon();

                  /// toggle switch
                },
                child: Container(
                    width: 40.0,
                    height: 40.0,
                    decoration:
                        context.watch<GameStatusProvider>().fullyLoaded == true
                            ? BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.yellow,
                                // image: DecorationImage(
                                //   fit: BoxFit.cover,
                                //   image: AssetImage(
                                //       'images/plasmaChargeForButton.gif'),
                                // ),
                              )
                            : BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: kBlankColor,
                              ),
                    // DecorationImage(
                    //   fit: BoxFit.cover,
                    //   image: AssetImage('images/plasmaChargeForButton.gif'),
                    // ),

                    // decoration:
                    //     context.watch<GameStatusProvider>().fullyLoaded == true
                    //         ? BoxDecoration(color: Colors.yellow)
                    //         color: Colors.yellow,
                    //         borderRadius: BorderRadius.circular(5),
                    //         image: DecorationImage(
                    //             fit: BoxFit.cover,
                    //             image: AssetImage(
                    //                 'images/plasmaChargeForButton.gif'),),)
                    //         : BoxDecoration(
                    //             borderRadius: BorderRadius.circular(5),
                    // color: context
                    //             .watch<GameStatusProvider>()
                    //             .fullyLoaded ==
                    //         true
                    //     ? Colors.black
                    //     : Colors.white54

                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: context.watch<GameStatusProvider>().fullyLoaded ==
                              false
                          ? Container(
                              child: AmmoPickup(),
                            )
                          : Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(5),
                                // image: DecorationImage(
                                //     fit: BoxFit.cover,
                                //     image: AssetImage(
                                //         'images/plasmaChargeForButton.gif')),
                              ),
                            ),
                    )),
              ),
              // SizedBox(
              //   width: 40.0,
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
