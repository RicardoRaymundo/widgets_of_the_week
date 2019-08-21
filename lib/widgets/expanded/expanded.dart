import 'package:flutter/material.dart';

class ExpandedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Constroi a tela principal
        child: _buildContent(),
      ),
    );
  }

  //Constroi a caixa Expanded, de acordo com os parametros recebidos
  Widget _buildBox({int points, Color color, Color textColor = Colors.white}) {
    return Expanded(

      //Determina a proporção do tamanho da caixa
      flex: points,
      child: Container(

        // Preenche o espaço disponivel
        constraints: BoxConstraints.expand(),
        color: color,
        child: Center(
          child: Text(
            '$points',
            style: TextStyle(fontSize: 32.0, color: textColor),
          ),
        ),
      ),
    );
  }

  // Determina a proporção da pagina
  Size _goldenRatio(BoxConstraints constraints) {
    double ratio = 13.0 / 8.0;
    if (constraints.maxHeight / constraints.maxWidth > ratio) {
      double height = constraints.maxWidth * ratio;
      return Size(constraints.maxWidth, height);
    } else {
      double width = constraints.maxHeight / ratio;
      return Size(width, constraints.maxHeight);
    }
  }

  // Função que cria um layout centralizado, para posteriormente serem
  // adicionados os Expandeds.
  Widget _centeredLayout({Widget child}) {
    return LayoutBuilder(builder: (content, constraints) {
      Size size = _goldenRatio(constraints);
      return Center(
        child: Container(
          constraints: BoxConstraints(
            maxWidth: size.width,
            maxHeight: size.height,
          ),
          child: child,
        ),
      );
    });
  }

  // Controi a pagina, chamando as devidas funções de criação de pagina
  // centralizada e dos Expandeds
  Widget _buildContent() {
    return _centeredLayout(
      child: Column(
        children: [
          _buildBox(points: 8, color: Colors.red),
          Expanded(
            flex: 5,
            child: Row(
              children: [
                _buildBox(points: 5, color: Colors.indigo),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  _buildBox(points: 1, color: Colors.green),
                                  _buildBox(points: 1, color: Colors.blue),
                                ],
                              ),
                            ),
                            _buildBox(points: 2, color: Colors.brown),
                          ],
                        ),
                      ),
                      _buildBox(points: 3, color: Colors.purple),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}