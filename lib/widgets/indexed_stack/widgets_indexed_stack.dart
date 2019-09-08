import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetsIndexedStack extends StatefulWidget {
  @override
  _WidgetsIndexedStackState createState() => _WidgetsIndexedStackState();
}

/// Neste exemplo temos um IndexedStack com 3 filhos, e um botão à parte de baixo
/// da tela que alterna o index do IndexedStack.
/// Assim como um Stack comum, o IndexedStack tambem tem uma lista de children e
/// estes tem seu index na lista. A diferenca é que o IndexedStack exibe apenas um
/// de seus filhos por vez, para alternar o widget filho deve-se alterar o valor
/// 'index' de IndexedStack.
class _WidgetsIndexedStackState extends State<WidgetsIndexedStack> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(

        /// Variável que define por index qual filho será exibido
        index: this.index,
        children: <Widget>[
          Container(
            key: ValueKey(0),
            color: Colors.green,
          ),
          Container(
            key: ValueKey(1),
            alignment: Alignment.bottomLeft,
            color: Colors.blue,
            height: 300.0,
            width: 300.0,
          ),
          Container(
            key: ValueKey(2),
            color: Colors.pink,
            height: 150.0,
            width: 150.0,
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(right: 15,left: 15),
        child: RaisedButton(
          child: Text('Change index'),

          /// Método que altera o valor da variável que determina o index que o
          /// IndexedStack irá exibir
          onPressed: (){
            setState(() {
              index++;
              if(index > 2) index = 0;
            });
          },
        ),
      ),
    );
  }
}

/// https://medium.com/flutter-community/a-deep-dive-into-stack-in-flutter-3264619b3a77