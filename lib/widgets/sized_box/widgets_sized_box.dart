import 'package:flutter/material.dart';

class WidgetsSizedBox extends StatefulWidget {
  @override
  _WidgetsSizedBoxState createState() => _WidgetsSizedBoxState();
}

class _WidgetsSizedBoxState extends State<WidgetsSizedBox> {

  double _height = 50;
  double _width = 100;

  /// Alterna os valores de altura e largura do SizedBox entre os
  /// inicialmente definidos e valor infinito, que ocupa a tela inteira
  void _changeSize() {
    print('aaaa');
    setState(() {
      _height == 50 ? _height = double.infinity : _height = 50;
      _width == 100 ? _width = double.infinity : _width = 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: this._height,
          width: this._width,
          child: Container(color: Colors.green,),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _changeSize,
      ),
    );
  }
}
