import 'dart:async';
import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame_example/practices/flip/components/place.dart';
import 'flip.game.dart';

class FlipWorld extends World with HasGameReference<FlipGame> {
  final place = FlipPlace(position: Vector2(0.0, 0.0));
  final cardGap = FlipGame.cardGap;
  late Vector2 areaSize;

  @override
  FutureOr<void> onLoad() async {
    await Flame.images.load('macos_montary.png');

    place.position = Vector2(FlipGame.cardWidth * -1 / 2, FlipGame.cardHeight * -1 / 2);

    // ? add

    add(place);

// ? camera
    areaSize = Vector2(FlipGame.cardWidth * 10, FlipGame.cardHeight * 3);
    final camera = game.camera;
    camera.viewfinder.visibleGameSize = areaSize;
    camera.viewfinder.position = Vector2(0, 0);
    camera.viewfinder.anchor = Anchor.center;
  }
}
