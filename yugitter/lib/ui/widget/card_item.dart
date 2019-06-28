import 'package:flutter/material.dart';
import 'package:yugitter/model/cards.dart' as cards;

class CardItem extends StatelessWidget {
  CardItem(this._cardItem);

  final cards.Card _cardItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 100.0,
            width: 40.0,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(_cardItem.cardImages[0].imageUrl))
            ),
          ),
        ],
      ),
    );
  }
}
