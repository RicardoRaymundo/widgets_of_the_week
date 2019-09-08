import 'package:flutter/material.dart';

class WidgetsSemantics extends StatefulWidget {
  @override
  _WidgetsSemanticsState createState() => _WidgetsSemanticsState();
}


/// Semantics é Uma ferramenta de acessibilidade que pode prover uma detalhada
/// descrição de seu widget filho a partir de suas propriedade. Este widget
/// dá significado à sub-ávore de widgets e é usado por utilitários de acessibilidade,
/// ferramentas de pesquisa e outros softwares de análise semântica.
class _WidgetsSemanticsState extends State<WidgetsSemantics> {
  final _textEditingController = TextEditingController(text: 'Texto default');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      /// Ao habilitar essa propriedade de MaterialApp, o app ativa uma sobreposição
      /// que exime as informacoes de acessibilidade reportada pelo framework,
       showSemanticsDebugger: true,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 150,
                width: 150,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      width: 50,
                      height: 50,
                      child: Semantics(

                        /// Ao ativar showSemanticsDebugger, será exibido apenas o controno do widget pai
                        /// com a informação da label abaixo
                          label: "Red", child: Container(color: Colors.red)),
                    ),
                    Positioned(
                      top: 25,
                      left: 25,
                      width: 50,
                      height: 50,
                      child: Semantics(
                          label: "Green",
                          child: Container(color: Colors.green)),
                    ),
                    Positioned(
                      top: 50,
                      left: 50,
                      width: 50,
                      height: 50,
                      child: Semantics(
                          label: "Blue", child: Container(color: Colors.blue)),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
