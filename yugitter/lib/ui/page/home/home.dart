import 'dart:io';

import 'package:flutter/material.dart';
import 'package:yugitter/ui/widget/app_bar.dart';
import 'package:yugitter/utils/api_constant.dart';
import 'home_body.dart';

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    Future<bool> _onWillPop() {
      return showDialog(
        context: context,
        builder: (context) => new AlertDialog(
          title: new Text('Are you sure?'),
          content: new Text('Do you want to exit an App'),
          actions: <Widget>[
            new FlatButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: new Text('No'),
            ),
            new FlatButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: new Text('Yes'),
            ),
          ],
        ),
      ) ?? false;
    }

    return new WillPopScope(
        child: Scaffold(
          backgroundColor: baseBackground,
          body: new Column(
            children: <Widget>[
              new GradientAppBar("Yugitter"),
              new HomeBody(),
            ],
          ),
        ),
        onWillPop: _onWillPop);
  }

}
