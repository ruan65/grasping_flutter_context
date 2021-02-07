import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('app build context: ${context.runtimeType} ${context.hashCode}');
    return Container(
      color: Colors.deepOrange,
    );
  }
}
