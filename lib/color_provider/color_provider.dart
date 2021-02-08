import 'package:flutter/material.dart';

class ColorProvider extends InheritedWidget {
  final Color appColor;

  const ColorProvider({
    Key key,
    @required this.appColor,
    @required Widget child,
  })  : assert(child != null),
        assert(appColor != null),
        super(key: key, child: child);

  static ColorProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ColorProvider>();
  }

  @override
  bool updateShouldNotify(ColorProvider old) => old.appColor != appColor;
}
