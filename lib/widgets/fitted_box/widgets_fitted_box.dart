import 'package:flutter/material.dart';

class WidgetsFittedBox extends StatefulWidget {
  @override
  _WidgetsFittedBoxState createState() => _WidgetsFittedBoxState();
}

class _WidgetsFittedBoxState extends State<WidgetsFittedBox> {
  int indexFit = 0;

  /// Lista de propriedades de BoxFit
  List<BoxFit> _ListBoxFit = [
    BoxFit.none,
    BoxFit.scaleDown,
    BoxFit.cover,
    BoxFit.contain,
    BoxFit.fill,
    BoxFit.fitHeight,
    BoxFit.fitWidth,
  ];

  /// Altera o index da lista
  _changeFit() {
    setState(() {
      indexFit++;
      if (indexFit == 7) indexFit = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_ListBoxFit[this.indexFit].toString()),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.blueGrey,
              padding: EdgeInsets.all(5),

              /// Widget que ajusta seu tamanho para caber no widget pai
              child: FittedBox(
                alignment: Alignment.center,

                /// A propriedade fit é um dois itens da lista
                /// O index da lista é alterado quando o botão é pressionado
                fit: _ListBoxFit[this.indexFit],
                child: Image.network(
                    'https://www.nicepng.com/png/detail/230-2309754_sonic-8-bit-sonic-gif.png'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _changeFit),
    );
  }
}
