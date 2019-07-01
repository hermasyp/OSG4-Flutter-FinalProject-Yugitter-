import 'package:yugitter/model/cards.dart';
import 'package:yugitter/resources/card_api_provider.dart';

class CardRepository{
  final _cardProvider = CardApiProvider();
  Future<List<CardData>> getListCards() => _cardProvider.fetchCards();
}