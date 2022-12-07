import 'package:flutter/material.dart';

import '../constants.dart';

class UpsideDownBuildingWidget extends StatelessWidget {
  int buildingHeight = 1;

  UpsideDownBuildingWidget({required this.buildingHeight});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        buildingHeight >= 1
            ? Icon(
                Icons.circle,
                color: Colors.white,
                size: 30.0,
              )
            : Icon(
                Icons.circle,
                color: kBlankColor,
                size: 30.0,
              ),
        buildingHeight >= 2
            ? Icon(
                Icons.circle,
                color: Colors.white,
                size: 30.0,
              )
            : Icon(
                Icons.circle,
                color: kBlankColor,
                size: 30.0,
              ),
        buildingHeight >= 3
            ? Icon(
                Icons.circle,
                color: Colors.white,
                size: 30.0,
              )
            : Icon(
                Icons.circle,
                color: kBlankColor,
                size: 30.0,
              ),
        buildingHeight >= 4
            ? Icon(
                Icons.circle,
                color: Colors.white,
                size: 30.0,
              )
            : Icon(
                Icons.circle,
                color: kBlankColor,
                size: 30.0,
              ),
        buildingHeight >= 5
            ? Icon(
                Icons.circle,
                color: Colors.white,
                size: 30.0,
              )
            : Icon(
                Icons.circle,
                color: kBlankColor,
                size: 30.0,
              ),
        Icon(
          Icons.circle,
          color: kBlankColor,
          size: 30.0,
        ),
        Icon(
          Icons.circle,
          color: kBlankColor,
          size: 30.0,
        ),
        Icon(
          Icons.circle,
          color: kBlankColor,
          size: 30.0,
        ),
        Icon(
          Icons.circle,
          color: kBlankColor,
          size: 30.0,
        ),
        Icon(
          Icons.circle,
          color: kBlankColor,
          size: 30.0,
        ),
      ],
    );
  }
}
