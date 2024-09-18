import 'dart:async';
import 'dart:ui';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/particles.dart';
import 'components/card.dart';
import 'components/foundation.dart';
import 'components/tableau.dart';
import 'components/stock.dart';
import 'components/waste.dart';
import 'klondike_world.dart';
 
enum Action { newDeal, sameDeal, changeDraw, haveFun }

class KlondikeGame extends FlameGame<KlondikeWorld> {
  static const double cardGap = 175.0;
  static const double topGap = 500.0;
  static const double cardWidth = 1000.0;
  static const double cardHeight = 1400.0;
  static const double cardRadius = 100.0;
  static const double cardSpaceWidth = cardWidth + cardGap;
  static const double cardSpaceHeight = cardHeight + cardGap;
  static final Vector2 cardSize = Vector2(cardWidth, cardHeight);
  static final cardRRect = RRect.fromRectAndRadius(
    const Rect.fromLTWH(0, 0, cardWidth, cardHeight),
    const Radius.circular(cardRadius),
  );

  // Constant used when creating Random seed.
  static const int maxInt = 0xFFFFFFFE; // = (2 to the power 32) - 1

  // This KlondikeGame constructor also initiates the first KlondikeWorld.
  KlondikeGame() : super(world: KlondikeWorld());

  // These three values persist between games and are starting conditions
  // for the next game to be played in KlondikeWorld. The actual seed is
  // computed in KlondikeWorld but is held here in case the player chooses
  // to replay a game by selecting Action.sameDeal.
  int klondikeDraw = 1;
  int seed = 1;
  Action action = Action.newDeal;
}
// class KlondikeGame extends FlameGame {
//   static const double cardWidth = 1000.0;
//   static const double cardHeight = 1400.0;
//   static const double cardGap = 175.0;
//   static const double cardRadius = 100.0;
//   static final Vector2 cardSize = Vector2(cardWidth, cardHeight);

//   // final int klondikeDraw = 3;
//   final int klondikeDraw = 1;

//   @override
//   FutureOr<void> onLoad() async {
//     await Flame.images.load('klondike-sprites.png');

//     final stock = StockPile()
//       ..size = cardSize
//       ..position = Vector2(cardGap, cardGap);

//     final waste = WastePile()
//       ..size = cardSize
//       ..position = Vector2(cardWidth + 2 * cardGap, cardGap);

//     final foundations = List.generate(
//       4,
//       (i) => FoundationPile(i)
//         ..size = cardSize
//         ..position = Vector2((i + 3) * (cardWidth + cardGap) + cardGap, cardGap),
//     );

//     final piles = List.generate(
//       7,
//       (i) => TableauPile()
//         ..size = cardSize
//         ..position = Vector2(
//           cardGap + i * (cardWidth + cardGap),
//           cardHeight + 2 * cardGap,
//         ),
//     );

//     world.add(stock);
//     world.add(waste);
//     world.addAll(foundations);
//     world.addAll(piles);

//     camera.viewfinder.visibleGameSize = Vector2(cardWidth * 7 + cardGap * 8, 4 * cardHeight + 3 * cardGap);
//     camera.viewfinder.position = Vector2(cardWidth * 3.5 + cardGap * 4, 0);
//     camera.viewfinder.anchor = Anchor.topCenter;

//     final cards = [
//       for (var rank = 1; rank <= 13; rank++)
//         for (var suit = 0; suit < 4; suit++) Card(rank, suit)
//     ];
//     cards.shuffle();
//     world.addAll(cards);

//     int cardToDeal = cards.length - 1;
//     for (var i = 0; i < 7; i++) {
//       for (var j = i; j < 7; j++) {
//         piles[j].acquireCard(cards[cardToDeal--]);
//       }
//       piles[i].flipTopCard();
//     }
//     for (int n = 0; n <= cardToDeal; n++) {
//       stock.acquireCard(cards[n]);
//     }
//   }

//   static final cardRRect = RRect.fromRectAndRadius(
//     const Rect.fromLTWH(0, 0, cardWidth, cardHeight),
//     const Radius.circular(cardRadius),
//   );
// }

Sprite klondikeSprite(double x, double y, double width, double height) {
  return Sprite(
    Flame.images.fromCache('klondike-sprites.png'),
    srcPosition: Vector2(x, y),
    srcSize: Vector2(width, height),
  );
}
