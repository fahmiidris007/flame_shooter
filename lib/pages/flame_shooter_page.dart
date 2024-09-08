import 'dart:async';
import 'package:flame/game.dart';
import 'package:flame_shooter/components/ship.dart';

class FlameShooterPage extends FlameGame {
  @override
  FutureOr<void> onLoad() async {
    // add(SpriteComponent(
    //   sprite: await loadSprite('ships/spaceShips_001.png'),
    // ));
    Ship ship = Ship();
    add(ship);
  }
}
