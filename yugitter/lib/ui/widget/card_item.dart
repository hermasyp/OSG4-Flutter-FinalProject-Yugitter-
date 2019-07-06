import 'package:flutter/material.dart';
import 'package:yugitter/model/cards.dart' as cards;
import 'package:yugitter/ui/page/detail.dart';

class CardItem extends StatelessWidget {
  CardItem(this._cardItem);

  final cards.CardData _cardItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        elevation: 8,
        child: new Container(
          child: new Row(
            children: <Widget>[
              new Container(
                padding: EdgeInsets.all(8.0),
                child: new SizedBox(
                  width: 80.0,
                  height: 120.0,
                  child: new Image.network(
                    _cardItem.cardImages[0].imageUrl,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              new Expanded(
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text(
                        _cardItem.name,
                        style: new TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                      new Text(
                          'Type : ' + (_cardItem.type != null ? _cardItem.type : "Unknown Type"),
                          style: new TextStyle(
                              fontSize: 12.0, fontWeight: FontWeight.normal)),
                      new Text(
                          'Race : ' + (_cardItem.race != null ? _cardItem.race : "Unknown"),
                          style: new TextStyle(
                              fontSize: 12.0, fontWeight: FontWeight.normal)),
                    ],
                  ))
            ],
          ),
        )
      ),
      onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailCard(cardData: _cardItem),
              ),
            ),
          },
    );
  }
}
