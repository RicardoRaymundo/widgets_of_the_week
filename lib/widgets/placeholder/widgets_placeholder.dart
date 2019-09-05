import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


/// Placeholder é usado quando se quer ocupar espaço em layouts, sem ainda ter o
/// componente desejado para ocupar tal espaço.
/// Placeholder é simples e provê uma boa pré visualização do layout em que se está
/// trabalhando.
class WidgetsPlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Placeholder(),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 200,
                child: Placeholder(

                  /// Cor e largura das linhas do Placeholder
                  strokeWidth: 5,
                  color: Colors.green,
                ),
              ),
            ),
            Container(
              height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    child: Placeholder(

                      /// Pode-se definir largura e altura para o Placeholder,
                      /// caso seu widget pai nao tenha esses parametros
                      fallbackHeight: 100,
                      fallbackWidth: 100,
                      strokeWidth: 1,
                    ),
                  ),
                  Container(
                    child: Placeholder(
                      fallbackHeight: 100,
                      fallbackWidth: 100,
                      strokeWidth: 3,
                    ),
                  ),
                  Container(
                    child: Placeholder(
                      fallbackHeight: 150,
                      fallbackWidth: 100,
                      strokeWidth: 4,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
