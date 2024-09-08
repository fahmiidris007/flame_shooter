import 'dart:async';
import 'dart:math';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/flame.dart';

class Ship extends SpriteComponent with TapCallbacks {
  @override
  FutureOr<void> onLoad() async {
    sprite = Sprite(await Flame.images.load('ships/spaceShips_001.png'));
    position = Vector2(100, 100);
    // size = Vector2(100, 100);
    scale = Vector2(0.5, 0.5);
    angle = pi / 2;
    anchor = Anchor.center;
  }

  // @override
  // void onTapDown(TapDownEvent event) {
  //   super.onTapDown(event);
  //   position += Vector2(10, 0);
  // }

  // @override
  // void update(double dt) {
  //   super.update(dt);
  // position.add(Vector2(1, 0));
  // }
}
