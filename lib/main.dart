import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('app build context: ${context.runtimeType} ${context.hashCode}');
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print('size: $size');
    print(
        'home page build context: ${context.runtimeType} ${context.hashCode}');
    return Container(color: Colors.deepOrange);
  }
}
