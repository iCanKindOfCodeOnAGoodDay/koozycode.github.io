import 'package:flappy_taco/providers/game_status_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RotatingIcecreamBullet extends StatefulWidget {
  String path = '';
  double height = 300.0;
  double width = 300.0;
  RotatingIcecreamBullet(
      {required this.path, required this.height, required this.width});

  @override
  _RotatingIcecreamBulletState createState() => _RotatingIcecreamBulletState();
}

class _RotatingIcecreamBulletState extends State<RotatingIcecreamBullet>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 5000),
      vsync: this,
    );
    _controller.repeat();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          RotationTransition(
            turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
            child: Container(
              height: widget.height,
              width: widget.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/${widget.path}'))),
            ),
          ),
        ],
      ),
    );
  }
}
