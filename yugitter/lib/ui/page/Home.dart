import 'package:flutter/material.dart';
import 'package:yugitter/bloc/cards_bloc.dart';
import 'package:yugitter/model/cards.dart';
import 'package:yugitter/ui/widget/card_item.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void dispose() {
    // TODO: implement dispose
    cardBloc.dispose();
    super.dispose();
  }


  @override
  void initState() {
    cardBloc.fetchingCards();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Yugitter'),
        ),
        body: StreamBuilder(
            stream: cardBloc.divineCards,
            builder: (context, AsyncSnapshot<List<CardData>> snapshot) {
              if (snapshot.hasData) {
                return buildList(snapshot);
              } else if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            })
    );
  }

  Widget buildList(AsyncSnapshot<List<CardData>> snapshot) {
    return ListView.builder(
        itemCount: snapshot.data.length,
        padding: EdgeInsets.all(4.0),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
            child: CardItem(snapshot.data[index]),
          );
        });
  }
}
