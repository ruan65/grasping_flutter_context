import 'package:flutter/material.dart';

import 'main.dart';

class ColorfulScreen extends StatefulWidget {
  @override
  _ColorfulScreenState createState() => _ColorfulScreenState();
}

class _ColorfulScreenState extends State<ColorfulScreen> {
  Color color;

  // @override
  // void initState() {
    // super.initState();
    // var homePageState = context.findAncestorStateOfType<MyAppState>();
    // print('home page state found ${homePageState.hashCode}');
    // var homePageWidget = context.findAncestorWidgetOfExactType<MyApp>();
    // print('home page widget found ${homePageWidget.hashCode}');
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
