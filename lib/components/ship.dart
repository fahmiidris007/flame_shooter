import 'dart:async';
import 'dart:math';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/flame.dart';

class Ship extends SpriteComponent with TapCallbacks {
  late Vector2 destination;
  late Vector2 d; // distance
  double v = 2.0; // velocity

  // dijalankan petama kali
  @override
  FutureOr<void> onLoad() async {
    sprite = Sprite(await Flame.images.load('ships/spaceShips_001.png'));
    // position = Vector2(100, 100);
    // size = Vector2(100, 100);
    scale = Vector2(0.5, 0.5);
    angle = pi / 2;
    anchor = Anchor.center;
  }

  // dijalankan setelah seluruh komponen di load (onLoad)
  @override
  void onMount() {
    super.onMount();
    d = Vector2(0, 0);
    destination = position;
  }

  // @override
  // void onTapDown(TapDownEvent event) {
  //   super.onTapDown(event);
  //   position += Vector2(10, 0);
  // }

  @override
  void update(double dt) {
    super.update(dt);
    if ((destination - position).length < v) {
      position = destination;
      d = Vector2(0, 0);
    }
    position.add(d * v);
  }

  void setDestination(DragUpdateInfo info) {
    destination = info.eventPosition.global;
    lookAt(destination);
    /* arah default lookAt arah assets keatas, menyesuaikan arah awal asset 
      (disini karena arah awal ke bawah jadi harus di keatasin / diputar 360 degree = phi) */
    angle += pi;
    // distance / jarak total dari posisi saat ini ke posisi tujuan
    d = destination - position;
    d = d.normalized(); // besar satuan (diskrit) dari distance d
  }
}
