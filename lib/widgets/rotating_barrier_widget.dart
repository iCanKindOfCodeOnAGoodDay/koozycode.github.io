import 'package:flappy_taco/providers/game_status_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RotatingBarrierWidget extends StatefulWidget {
  String path = '';

  RotatingBarrierWidget({required this.path});

  @override
  _RotatingBarrierWidgetState createState() => _RotatingBarrierWidgetState();
}

class _RotatingBarrierWidgetState extends State<RotatingBarrierWidget>
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
              height: 40.0,
              width: 40.0,
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
