import 'package:flappy_taco/providers/game_status_provider.dart';
import 'package:flappy_taco/providers/taco_position_provider.dart';
import 'package:flappy_taco/screens/game_play_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => GameStatusProvider()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GamePlayScreen(),
    );
  }
}
