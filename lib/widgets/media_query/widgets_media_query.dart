import 'package:flutter/material.dart';

class WidgetsMediaQuery extends StatefulWidget {
  @override
  _WidgetsMediaQueryState createState() => _WidgetsMediaQueryState();
}

class _WidgetsMediaQueryState extends State<WidgetsMediaQuery> {
  Color containerColor;

  @override
  Widget build(BuildContext context) {
    this.containerColor = MediaQuery.of(context).size.width < 400 ? Colors.blue : Colors.red;
    print('LARGURA DA TELA');
    print(MediaQuery.of(context).size.width);
    print('------------------------');
    print('ORIENTAÇÃO');
    print(MediaQuery.of(context).orientation);
    print('------------------------');
    print('BRILHO');
    print(MediaQuery.of(context).platformBrightness);
    print('------------------------');
    print('ESCALA DE TEXTO');
    print(MediaQuery.of(context).textScaleFactor);
    print('------------------------');
    print('PADDING');
    print(MediaQuery.of(context).padding);
    return Scaffold(
      body: Container(
        color: containerColor,
      ),
    );
  }
}
