import 'package:flame/game.dart';
import 'package:flutter/painting.dart';

import 'flip.world.dart';

class FlipGame extends FlameGame<FlipWorld> {
  FlipGame() : super(world: FlipWorld());

  static const double cardWidth = 150;
  static const double cardHeight = 200;
  static const double cardGap = 50;
  static const double cardRadius = 20;
  static final Vector2 cardSize = Vector2(cardWidth, cardHeight);
  static final cardRRect = RRect.fromRectAndRadius(
    const Rect.fromLTWH(0, 0, cardWidth, cardHeight),
    const Radius.circular(cardRadius),
  );
}
