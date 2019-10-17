import 'dart:math';
import 'package:flutter/material.dart';

class WidgetsAnimatedContainer extends StatefulWidget {
  @override
  _WidgetsAnimatedContainerState createState() => _WidgetsAnimatedContainerState();
}

class _WidgetsAnimatedContainerState extends State<WidgetsAnimatedContainer> {
  // Definindo as variáveis e seus valores iniciais.
  // Os valores serão alterados ao clicar no botão da página.
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AnimatedContainer Demo'),
        ),
        body: Center(
          child: AnimatedContainer(
            // Propriedades guardadas nesta classe State
            width: this._width,
            height: this._height,
            decoration: BoxDecoration(
              color: this._color,
              borderRadius: _borderRadius,
            ),
            // Definindo a duração da Animação
            duration: Duration(seconds: 1),
            // A propriedade curve define a dinamica da animação.
            curve: Curves.fastOutSlowIn,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_arrow),
          // Ao pressionar o botão:
          onPressed: () {
            // Usa o setState para reconstruir o widget com novos valores.
            setState(() {
              // Criado um gerador de números aleatórios.
              final random = Random();

              // Gera valores aleatórios de altura e largura, de 1 à 299.
              this._width = random.nextInt(300).toDouble();
              this._height = random.nextInt(300).toDouble();

              // Gera uma cor aleatória.
              this._color = Color.fromRGBO(
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256),
                1,
              );

              // Gera um raio de borda aleatório.
              this._borderRadius =
                  BorderRadius.circular(random.nextInt(100).toDouble());
            });
          },
        ),
      ),
    );
  }
}