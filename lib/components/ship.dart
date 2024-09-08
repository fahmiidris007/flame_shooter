import 'dart:async';
import 'dart:math';

import 'package:flame/components.dart';
import 'package:flame/flame.dart';

class Ship extends SpriteComponent {
  @override
  FutureOr<void> onLoad() async {
    sprite = Sprite(await Flame.images.load('ships/spaceShips_001.png'));
    position = Vector2(250, 250);
    // size = Vector2(100, 100);
    scale = Vector2(0.5, 0.5);
    angle = pi / 2;
    anchor = Anchor.center;
  }

  @override
  void update(double dt) {
    super.update(dt);
    position.add(Vector2(1, 0));
  }
}
