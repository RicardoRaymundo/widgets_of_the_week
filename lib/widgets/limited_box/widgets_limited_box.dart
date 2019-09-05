import 'package:flutter/material.dart';

/// Esta classe gera uma lista onde os filhos são LimitedBox.
/// LimitedBox é otimo para se usar em listas pois nele podem ser
/// definidos os parametros de altura e largura máximas
class WidgetsLimitedBox extends StatelessWidget {
  final List<Color> colorList = [
    Colors.amber,
    Colors.black,
    Colors.blue,
    Colors.green,
    Colors.pink,
    Colors.orange,
    Colors.red,
    Colors.yellow,
    Colors.cyan,
    Colors.greenAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          for (int i = 0; i < this.colorList.length; i++)
            LimitedBox(
              maxHeight: 200,
              child: Container(
                color: this.colorList[i],
              ),
            )
        ],
      ),
    );
  }
}
