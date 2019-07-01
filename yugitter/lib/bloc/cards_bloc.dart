import 'package:rxdart/rxdart.dart';
import 'package:yugitter/model/cards.dart';
import 'package:yugitter/resources/card_repository.dart';

class CardsBloc{
  final _repository = CardRepository();
  final _cardsFetcher = PublishSubject<List<CardData>> ();
  Observable<List<CardData>> get divineCards => _cardsFetcher.stream;

  fetchingCards() async{
    List<CardData> cards = await _repository.getListCards();
    _cardsFetcher.sink.add(cards);
  }

  dispose(){
    _cardsFetcher.close();
  }
}

final cardBloc = CardsBloc();