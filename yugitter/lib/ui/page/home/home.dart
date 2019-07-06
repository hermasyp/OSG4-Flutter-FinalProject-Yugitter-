import 'package:flutter/material.dart';
import 'package:yugitter/ui/widget/app_bar.dart';
import 'package:yugitter/utils/api_constant.dart';
import 'home_body.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: baseBackground,
      body: new Column(
        children: <Widget>[
          new GradientAppBar("Yugitter"),
          new HomeBody(),
        ],
      ),
    );
  }
}
