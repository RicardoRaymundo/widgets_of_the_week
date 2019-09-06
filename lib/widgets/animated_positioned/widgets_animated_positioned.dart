import 'package:flutter/material.dart';

class WidgetsAnimatedPositioned extends StatefulWidget {
  @override
  _WidgetsAnimatedPositionedState createState() => _WidgetsAnimatedPositionedState();
}

/// Esta classe contem um AnimatedPositioned que é animado para o topo e para o fundo
/// da tela através de um RaisedButton.
/// A implementação de AnimatedPositioned é similar à do Positioned, podendo ser
/// definidos parametros de alinhamento à partir de top, bottom, left e right.
/// A diferenca está nos parametros de animação, que são a duração de ida, de volta
/// e curve(curva da animação).
class _WidgetsAnimatedPositionedState extends State<WidgetsAnimatedPositioned> with TickerProviderStateMixin {

  double _ironManAlignment = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('https://www.metoffice.gov.uk/binaries/content/gallery/metofficegovuk/hero-images/weather/cloud/cumulus-cloud.jpg'),
                    fit: BoxFit.cover)),
          ),
          AnimatedPositioned(
            duration: Duration(seconds: 1),

            /// Este é valor de alinhamento que sera alterado pelo botão, a transição
            /// entre os valor será animada
            bottom: _ironManAlignment,
            left: 90,
            child: Container(
              height: 250,
              width: 150,
              child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVqWOYI5jPiMEokhJV2AP6fbNs-oeaM9Ef8LRsTgzj5DJHzMrRZw'),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: RaisedButton(
              onPressed: () {
                _flyIronMan();
              },
              child: Text('Go'),
              color: Colors.red,
              textColor: Colors.yellowAccent,

              /// Formato chanfrado da borda do botão
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
          )
        ],
      ),
    );
  }

  /// Método que alterna o valor de alinhamento do AnimatedPositioned
  void _flyIronMan() {
    setState(() {
      if(_ironManAlignment == 320) _ironManAlignment = 50;
      else _ironManAlignment = 320;

    });
  }

}

/// https://medium.com/aubergine-solutions/options-to-animate-in-flutter-2cec6612c207