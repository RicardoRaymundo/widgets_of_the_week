import 'package:flutter/material.dart';

class WidgetsExpanded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Constroi a tela principal
        child: _buildContent(),
      ),
    );
  }

  /// Cria a caixa Expanded, de acordo com os parametros recebidos
  Widget _expandedContainer(
      {int flex = 1, Color color, Color textColor = Colors.white}) {
    return Expanded(
      /// Determina a proporção do tamanho da caixa
      flex: flex,
      child: Container(
        // Preenche o espaço disponivel
        constraints: BoxConstraints.expand(),
        color: color,
        child: Center(
          child: Text(
            '$flex',
            style: TextStyle(fontSize: 32.0, color: textColor),
          ),
        ),
      ),
    );
  }

  Widget _expandedColumn({int flex = 1, List<Widget> children}) {
    return Expanded(
      flex: flex,
      child: Column(
        children: children,
      ),
    );
  }

  Widget _expandedRow({int flex = 1, List<Widget> children}) {
    return Expanded(
      flex: flex,
      child: Row(
        children: children,
      ),
    );
  }

  /// Define a proporção áurea
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

  // Cria um layout centralizado.
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

  // Implementa o layout
  Widget _buildContent() {
    return _centeredLayout(
      child: Column(
        children: [
          this._expandedContainer(flex: 8, color: Colors.red),
          this._expandedRow(
            flex: 5,
            children: [
              this._expandedContainer(flex: 5, color: Colors.indigo),
              this._expandedColumn(
                flex: 3,
                children: [
                  this._expandedRow(
                    flex: 2,
                    children: [
                      this._expandedColumn(
                        children: [
                          this._expandedContainer(color: Colors.green),
                          this._expandedContainer(color: Colors.blue),
                        ],
                      ),
                      this._expandedContainer(flex: 2, color: Colors.brown),
                    ],
                  ),
                  this._expandedContainer(flex: 3, color: Colors.purple),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
