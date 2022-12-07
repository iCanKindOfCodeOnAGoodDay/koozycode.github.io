import 'package:flutter/material.dart';

class DevelopmentBlock extends StatelessWidget {
  Color color = Colors.red;
  DevelopmentBlock({required this.color});
  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.circle,
      color: color,
      size: 30.0,
    );
  }
}
