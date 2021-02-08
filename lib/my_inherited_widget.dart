import 'package:flutter/material.dart';

class MyInheritedWidget extends InheritedWidget {
  final int value;

  const MyInheritedWidget({
    @required this.value,
    @required Widget child,
    Key key,
  })  : assert(child != null),
        super(key: key, child: child);

  static MyInheritedWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    throw UnimplementedError();
  }
}
