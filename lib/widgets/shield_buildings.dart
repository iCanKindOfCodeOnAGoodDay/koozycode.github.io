import 'package:flutter/material.dart';

import '../constants.dart';
import 'development_block_widget.dart';

class ShieldBuildings extends StatelessWidget {
  int buildingHeight = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        // DevelopmentBlock(color: kBlankColor),
        // DevelopmentBlock(color: kBlankColor),
        buildingHeight >= 10 ? kFlashingGem : kblankIcon,
        buildingHeight >= 9 ? kFlashingGem : kblankIcon,
        buildingHeight >= 8 ? kFlashingGem : kblankIcon,
        buildingHeight >= 7 ? kFlashingGem : kblankIcon,
        buildingHeight >= 6 ? kFlashingGem : kblankIcon,
        buildingHeight >= 5 ? kFlashingGem : kblankIcon,
        buildingHeight >= 4 ? kFlashingGem : kblankIcon,
        buildingHeight >= 3 ? kFlashingGem : kblankIcon,
        buildingHeight >= 2 ? kFlashingGem : kblankIcon,
        buildingHeight >= 1 ? kFlashingGem : kblankIcon,
        kSkullCoin,
        // kWeb,
      ],
    );
  }
}
