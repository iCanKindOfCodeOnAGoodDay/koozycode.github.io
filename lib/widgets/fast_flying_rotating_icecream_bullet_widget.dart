import 'package:flappy_taco/providers/game_status_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FastRotatingIcecreamBullet extends StatefulWidget {
  String path = '';
  double height = 40.0;
  double width = 40.0;
  FastRotatingIcecreamBullet(
      {required this.path, required this.height, required this.width});

  @override
  _FastRotatingIcecreamBulletState createState() =>
      _FastRotatingIcecreamBulletState();
}

class _FastRotatingIcecreamBulletState extends State<FastRotatingIcecreamBullet>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(microseconds: 500),
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
          // ElevatedButton(
          //   child: Text("go"),
          //   onPressed: () => _controller.forward(),
          // ),
          // ElevatedButton(
          //   child: Text("reset"),
          //   onPressed: () => _controller.reset(),
          // ),
        ],
      ),
    );
  }
}
