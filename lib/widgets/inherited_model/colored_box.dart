import 'package:flutter/cupertino.dart';

class ColoredBox extends StatelessWidget {
  final Color color;
  final Widget child;

  const ColoredBox({Key key, this.color, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      padding: EdgeInsets.all(20),
      child: child,
    );
  }
}