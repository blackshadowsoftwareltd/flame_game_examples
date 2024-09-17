import '../components/card.dart';

abstract class Pile {
  void acquireCard(Card card);
  bool canMoveCard(Card card);
  bool canAcceptCard(Card card);
  void removeCard(Card card);
  void returnCard(Card card);
}
