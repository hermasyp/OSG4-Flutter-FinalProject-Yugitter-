import 'package:flutter/material.dart';
import 'package:yugitter/ui/page/detail.dart';
import 'package:yugitter/ui/page/home/home.dart';

void main() => runApp(MainPage());

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      home: Scaffold(
        //todo : adding page

        body: Home(),
      ),
    );
  }
}
