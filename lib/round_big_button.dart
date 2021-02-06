import 'package:flutter/material.dart';

class RoundBigButton extends StatefulWidget {
  final Color color;
  final VoidCallback tapHandler;

  const RoundBigButton(
      {Key key, this.color = Colors.black, this.tapHandler = voidCallback})
      : super(key: key);

  @override
  _RoundBigButtonState createState() => _RoundBigButtonState();
}

class _RoundBigButtonState extends State<RoundBigButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.tapHandler,
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: widget.color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

void voidCallback() {}
