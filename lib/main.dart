import 'package:flame/game.dart';
import 'package:flame_shooter/pages/flame_shooter_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: GameWidget(game: FlameShooterPage()),
    );
  }
}
