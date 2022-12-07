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
                          : Colors.red),
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
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: context.watch<GameStatusProvider>().fullyLoaded ==
                              true
                          ? Colors.lightGreenAccent
                          : Colors.white24),
                ),
              ),
              SizedBox(
                width: 40.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
