import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_context/color_provider/color_provider.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('app build context: ${context.runtimeType} ${context.hashCode}');
    return ColorProvider(
      appColor: Color(Random().nextInt(0xFFFFFFFF)),
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    final size = context.dependOnInheritedWidgetOfExactType<MediaQuery>();
    final color = ColorProvider.of(context).appColor;
    print('size: $size');
    print(
        'home page build context: ${context.runtimeType} ${context.hashCode}');
    return Container(color: color);
  }
}
