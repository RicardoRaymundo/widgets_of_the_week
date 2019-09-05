import 'package:flutter/material.dart';

class WidgetsOpacity extends StatefulWidget {
  @override
  _WidgetsOpacityState createState() => _WidgetsOpacityState();
}

class _WidgetsOpacityState extends State<WidgetsOpacity> {
  double _width = 150;
  double _height = 150;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(12);
  double _opacity = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  // Propriedades guardadas nesta classe State
                  width: _width,
                  height: _height,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: _borderRadius,
                  ),
                ),
                Container(
                  width: _width - 10,
                  height: _height,
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        // Capturando imagem da internet
                        child: Image.network(
                          'https://www.pinclipart.com/picdir/middle/178-1787049_kawaii-white-ghost-boo-halloween-kawaii-halloween-drawings.png',
                          // Aplicando efeito de cor
                          colorBlendMode: BlendMode.modulate,
                        ),
                      ),
                      AnimatedOpacity(
                        // Definindo opacidade e duração da animação
                        opacity: _opacity,
                        duration: Duration(seconds: 1),
                        child: Container(
                          // o Container branco esta posicionado por cima da imagem,
                          // a animação de opacidade sera aplicada nele.
                          color: Colors.white,
                          width: _width,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: _width,
                  height: _height,
                  decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    borderRadius: _borderRadius,
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.opacity),
          // Ao pressionar o botão:
          onPressed: () {
            // Usa o setState para redefinidir o valor de opacidade.
            setState(() {
              if(_opacity == 1){
                _opacity = 0;
              }
              else{
                _opacity = 1;
              }
            });
          },
        ),
      ),
    );
  }
}
