import 'package:flutter/material.dart';
import 'package:yugitter/model/cards.dart';
import 'package:yugitter/ui/widget/separator.dart';
import 'package:yugitter/utils/api_constant.dart';
import 'package:yugitter/utils/color_utils.dart';

class DetailCard extends StatelessWidget {
  final CardData cardData;

  DetailCard({Key key, @required this.cardData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: baseBackground,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: FlutterColor("#ED213A"),
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(cardData.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                  background: Image.network(
                    cardData.cardImages[0].imageUrl,
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
        body: Card(
            elevation: 8,
            margin: EdgeInsets.all(16.0),
            child: new Container(
              child: new Row(
                children: <Widget>[
                  new Expanded(
                      child: new Center(
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          padding: EdgeInsets.all(16),
                          child: new SizedBox(
                            width: 80.0,
                            height: 120.0,
                            child: new Image.network(
                              cardData.cardImages[0].imageUrl,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        new Text(
                          cardData.name,
                          style: new TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        new Separator(),
                        new Text(
                            'Type : ' +
                                (cardData.type != null
                                    ? cardData.type
                                    : "Unknown Type"),
                            style: new TextStyle(
                                fontSize: 12.0, fontWeight: FontWeight.normal)),
                        new Text(
                            'Race : ' +
                                (cardData.race != null
                                    ? cardData.race
                                    : "Unknown"),
                            style: new TextStyle(
                                fontSize: 12.0, fontWeight: FontWeight.normal)),
                        new Text(
                            'Level : ' +
                                (cardData.level != null
                                    ? cardData.level
                                    : "Unknown"),
                            style: new TextStyle(
                                fontSize: 12.0, fontWeight: FontWeight.normal)),
                        new Text(
                            'Attribute : ' +
                                (cardData.attribute != null
                                    ? cardData.attribute
                                    : "Unknown"),
                            style: new TextStyle(
                                fontSize: 12.0, fontWeight: FontWeight.normal)),
                        new Separator(),
                        new Text('Details',
                            style: new TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold)),
                        new Separator(),
                        new Expanded(
                            child: new Container(
                          margin: EdgeInsets.all(16),
                          child: new Text(
                              (cardData.desc != null
                                  ? cardData.desc
                                  : "Unknown"),
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FontStyle.italic)),
                        ))
                      ],
                    ),
                  ))
                ],
              ),
            )),
      ),
    );
  }
}
