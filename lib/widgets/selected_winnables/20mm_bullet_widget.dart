import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/game_status_provider.dart';

class TwentyMMBullet extends StatelessWidget {
  // String type = '20mmOrange.png';
  // TwentyMMBullet({required this.type});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 40.0,
          width: 40.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      'images/${context.watch<GameStatusProvider>().pathToTwentyMMBullet}'))),
        ),
      ],
    );
  }
}
