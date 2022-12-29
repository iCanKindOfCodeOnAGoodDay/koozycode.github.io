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
                  context.read<GameStatusProvider>().reloadHellFire();
                },
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              context.watch<GameStatusProvider>().fullyLoaded ==
                                      true
                                  ? 'images/componetLeftBlackButtonSquare.png'
                                  : 'images/nukeButton.png'))),
                  child: Container(
                    width: 70.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: kTransparent),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  context.read<GameStatusProvider>().reloadHellFire();
                },
                child: Container(
                    width: 180.0,
                    height: 90.0,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: context.watch<GameStatusProvider>().fullyLoaded ==
                              true
                          ? Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'images/rayGunPimpedEnergy.gif'))),
                            )
                          : Container(
                              decoration: BoxDecoration(
                                color: kTransparent,
                                borderRadius: BorderRadius.circular(5),
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
