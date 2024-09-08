import 'dart:async';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flame_shooter/components/ship.dart';

class FlameShooterPage extends FlameGame with TapCallbacks, PanDetector {
  Ship ship = Ship();

  @override
  FutureOr<void> onLoad() async {
    // add(SpriteComponent(
    //   sprite: await loadSprite('ships/spaceShips_001.png'),
    // ));

    add(ship);
  }

  // @override
  // void onTapDown(TapDownEvent event) {
  //   super.onTapDown(event);
  //   log('TapdownEvent: ${event.localPosition}');
  //   ship.position.add(Vector2(10, 0));
  // }

  @override
  void onPanUpdate(DragUpdateInfo info) {
    super.onPanUpdate(info);
    // ship.position = info.eventPosition.global;
    ship.setDestination(info);
  }
}
