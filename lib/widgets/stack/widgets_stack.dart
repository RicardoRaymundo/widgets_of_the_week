import 'package:flutter/material.dart';

/// Stack é um widget que, como o nome sugere, é uma pilha de widgets, diferente
/// de Row e Column, que enfileiram seus children.
/// Stack permite um posicionamento preciso de seus children, possibilitando
/// a criação de complexos layouts.
class WidgetsStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 150,
          width: 150,
          child: Stack(
            /// Alinhamento por default é pelo canto superior esquerdo do Stack
            // alignment: AlignmentDirectional.bottomCenter,

            /// Como definir o tamanho de um widget nao posicionado
            //fit: StackFit.loose,

            /// Definindo um children em overflow será definido
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                color: Colors.grey,
              ),
              Container(
                height: 120,
                width: 120,
                color: Colors.blueAccent,
              ),
              Container(
                height: 90,
                width: 90,
                color: Colors.red,
              ),
              Container(
                height: 60,
                width: 60,
                color: Colors.amber,
              ),
              Positioned(

                /// Positioned para ilustrar o efeito de overflow.
                /// Comente a linha de overflow do Stack para ver a diferença
                bottom: 50,
                right: -30,
                child: Container(
                  height: 30,
                  width: 60,
                  color: Colors.deepPurple,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
