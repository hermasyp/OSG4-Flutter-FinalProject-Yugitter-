import 'package:flutter/material.dart';
import 'package:yugitter/ui/page/Home.dart';

void main() => runApp(
  MaterialApp(
    home: MainPage(),
  )
);

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //todo : adding page
      body: Home(),
    );
  }
}
