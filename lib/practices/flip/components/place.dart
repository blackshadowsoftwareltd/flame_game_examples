import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame_example/practices/flip/components/card.dart';
import 'package:flame_example/practices/flip/flip.game.dart';

import '../models/abstractions.dart';

class FlipPlace extends PositionComponent implements FlipAbstraction {
  FlipPlace({super.position}) : super(size: FlipGame.cardSize);

  @override
  bool get debugMode => true;

  @override
  void createCard(FlipCard card) {
    assert(card.isFront);
    card.position = position;
    card.priority = 1;
  }

  final _borderPaint = Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = 5
    ..color = const Color.fromARGB(255, 29, 189, 228);

  final _circlePaint = Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = 10
    ..color = const Color.fromARGB(255, 29, 228, 172);

  @override
  void render(Canvas canvas) {
    canvas.drawRRect(FlipGame.cardRRect, _borderPaint);
    canvas.drawCircle(Offset(width / 2, height / 2), FlipGame.cardRadius * 2, _circlePaint);
  }
}
