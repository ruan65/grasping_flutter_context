import 'package:flutter/material.dart';

import 'main.dart';

class ColorfulScreen extends StatefulWidget {
  @override
  _ColorfulScreenState createState() => _ColorfulScreenState();
}

class _ColorfulScreenState extends State<ColorfulScreen> {
  Color color;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var homePageState = context.findAncestorWidgetOfExactType<MyApp>();
    print('home page state found $homePageState');
  }

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
