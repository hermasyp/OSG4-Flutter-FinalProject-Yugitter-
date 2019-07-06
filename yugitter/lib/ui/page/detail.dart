import 'package:flutter/material.dart';
import 'package:yugitter/model/cards.dart';

class DetailCard extends StatelessWidget {
  final CardData cardData;

  DetailCard({Key key, @required this.cardData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(cardData.name),
      ),
      body: Container(
        child: new Column(
          children: <Widget>[
            new Column(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new SizedBox(
                        width: 120.0,
                        height: 160.0,
                        child: new Image.network(
                          cardData.cardImages[0].imageUrl,
                          fit: BoxFit.fitHeight,
                        )),
                    new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text(
                          cardData.name,
                          style: new TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        new Text(
                            cardData.type != null
                                ? cardData.type
                                : "Unknown Type",
                            style: new TextStyle(
                                fontSize: 14.0, fontWeight: FontWeight.normal)),
                        new Text(
                            cardData.atk != null ? cardData.atk : "Unknown",
                            style: new TextStyle(
                                fontSize: 10.0, fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
