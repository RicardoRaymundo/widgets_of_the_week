import 'package:flutter/material.dart';

class WidgetsWrap extends StatefulWidget {
  @override
  _WidgetsWrapState createState() => _WidgetsWrapState();
}

class _WidgetsWrapState extends State<WidgetsWrap> {

  /// Contexto global
  BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Center(
            child: Text(
              'Wrap Widget',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,

                  // Fonte importada do diretorio fonts e
                  // declarada no pubspeck.yaml
                  fontFamily: 'Ubuntu Regular'),
            ),
          ),
          margin: EdgeInsets.only(right: 48),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 16, bottom: 16),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Sem o widget Wrap',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Ubuntu Regular'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12, right: 12, top: 8),
                        child: Text(
                          'Aqui percebe-se que o layout está transbordando à direita\n'
                              'o que resulta em um erro!',
                          style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 14.0,
                              fontStyle: FontStyle.italic,
                              fontFamily: 'Ubuntu Regular'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),

                // Este vai gerar um erro de overflow
                Row(
                  children: <Widget>[
                    chipDesign("Food", Color(0xFF4fc3f7)),
                    chipDesign("Lifestyle", Color(0xFFffb74d)),
                    chipDesign("Health", Color(0xFFff8a65)),
                    chipDesign("Sports", Color(0xFF9575cd)),
                    chipDesign("Nature", Color(0xFF4db6ac)),
                    chipDesign("Fashion", Color(0xFFf06292)),
                    chipDesign("Heritage", Color(0xFFa1887f)),
                    chipDesign("City Life", Color(0xFF90a4ae)),
                    chipDesign("Entertainment", Color(0xFFba68c8)),
                  ],
                ),
              ],
            ),

            divider(context),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 16),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Com o widget Wrap',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Ubuntu Regular'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12, right: 12, top: 8),
                        child: Text(
                          'Aqui observamos que os Chips estão contidos dentro de um'
                              'widget Wrap.\nWrap ajusta todos os seus filho de acordo'
                              'com o espaço disponível\n'
                              'e automaticamente os joga para a linha de baixo quando'
                              'faltar espaco'
                          ,
                          style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 14.0,
                              fontStyle: FontStyle.italic,
                              fontFamily: 'Ubuntu Regular'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),

                // Este evitará o erro de overflow, alinhando seus filhos
                // conforme o espaco disponivel abaixo
                Wrap(
                  spacing: 0.0, // gap between adjacent chips
                  runSpacing: 0.0, // gap between lines
                  children: <Widget>[
                    chipDesign("Food", Color(0xFF4fc3f7)),
                    chipDesign("Lifestyle", Color(0xFFffb74d)),
                    chipDesign("Health", Color(0xFFff8a65)),
                    chipDesign("Sports", Color(0xFF9575cd)),
                    chipDesign("Nature", Color(0xFF4db6ac)),
                    chipDesign("Fashion", Color(0xFFf06292)),
                    chipDesign("Heritage", Color(0xFFa1887f)),
                    chipDesign("City Life", Color(0xFF90a4ae)),
                    chipDesign("Entertainment", Color(0xFFba68c8)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


// Método para criar o Chip com diferentes propriedades como rótulo
// e cor de fundo
Widget chipDesign(String label, Color color) => Container(
  child: Chip(
    label: Text(
      label,
      style: TextStyle(
          color: Colors.white, fontFamily: 'Ubuntu Regular'),
    ),
    backgroundColor: color,
    elevation: 4,
    shadowColor: Colors.grey[50],
    padding: EdgeInsets.all(4),
  ),
  margin: EdgeInsets.only(left: 12, right: 12, top: 2, bottom: 2),
);

// Método para criar um espaçador com margem
Container divider(BuildContext context) => Container(
  child: Divider(),
  margin: EdgeInsets.only(left: 10, right: 10, top: 28, bottom: 28),
);