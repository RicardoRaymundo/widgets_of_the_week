import 'package:flutter/material.dart';

class WidgetsLayoutBuilder extends StatefulWidget {
  @override
  _WidgetsLayoutBuilderState createState() => _WidgetsLayoutBuilderState();
}

class _WidgetsLayoutBuilderState extends State<WidgetsLayoutBuilder> {

  double _width = 300;
  double _height = 300;
  Color _color = Colors.lightBlue;

  /// Método que alterna entre dois estado de valores diferentes das variáveis
  void _changeLayout() {
    setState(() {
      if(this._height == 300 && this._width == 300){
        this._height = 400;
        this._width = double.infinity;
        this._color = Colors.brown;
      }
      else {
        this._height = 300;
        this._width = 300;
        this._color = Colors.lightBlue;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Layout Builder'),
      ),
      body: Center(
        child: Container(
          width: this._width,
          height: this._height,
          color: this._color,

          /// LayoutBuilder carrega o filho de acordo com a BoxConstraints
          /// do widget pai
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {

              /// Verifica o tamanho do widget pai e então decide qual filho
              /// será carregado
              if (constraints.maxHeight > 300 && constraints.maxWidth > 300) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Layout 2'),
                    Image.asset('assets/donuts1.png')
                  ],
                );
              } else {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Layout 1'),
                    Image.asset('assets/donuts2.png')
                  ],
                );
              }
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _changeLayout),
    );
  }
}
