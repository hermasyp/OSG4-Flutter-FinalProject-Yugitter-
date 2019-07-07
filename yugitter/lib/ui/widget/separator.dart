import 'package:flutter/material.dart';
import 'package:yugitter/utils/color_utils.dart';

class Separator extends StatelessWidget {
  final double width;

  const Separator({Key key, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
        margin: new EdgeInsets.symmetric(vertical: 8.0),
        height: 2.0,
        width: width != null ? width : 30.0,
        color: new FlutterColor("#ED213A")
    );
  }
}
