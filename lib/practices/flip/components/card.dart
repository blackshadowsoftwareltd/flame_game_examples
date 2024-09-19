import 'package:flame/components.dart';
import 'package:flame_example/practices/flip/flip.game.dart';

class FlipCard extends PositionComponent {
  FlipCard()
      : _isFront = true,
        super(size: FlipGame.cardSize);

  bool _isFront;
  bool get isFront => _isFront;
}
