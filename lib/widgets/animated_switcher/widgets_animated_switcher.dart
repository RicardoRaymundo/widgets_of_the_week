import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetsAnimatedSwitcher extends StatefulWidget {
  const WidgetsAnimatedSwitcher({Key key}) : super(key: key);

  @override
  _WidgetsAnimatedSwitcherState createState() =>
      _WidgetsAnimatedSwitcherState();
}

/// AnimatedSwitcher recebe uma variável que contem um child, podendo esta variável ser
/// redefinida, ativando uma animação. Este widget tambem recebe o parametro de duração
/// da animação. A animação default é fadeTransition, porem esse parametro pode ser
/// alterado para demais animações.
class _WidgetsAnimatedSwitcherState extends State<WidgetsAnimatedSwitcher> {
  /// Contador que servirá para alternar a imagem no AnimatedSwitcher
  int _pokeCount = 0;

  /// Lista de links de imagens que serão alternadas pelo AnimatedSwitcher.
  List<String> pokemons = [
    'https://giantbomb1.cbsistatic.com/uploads/scale_medium/0/6087/2437349-pikachu.png',
    'https://vignette.wikia.nocookie.net/pokemonet/images/8/87/004CharmanderFRLG.png/revision/latest?cb=20130505000902&path-prefix=pt-br',
    'https://assets.pokemon.com/assets/cms2/img/pokedex/full/007.png',
    'https://assets.pokemon.com/assets/cms2/img/pokedex/full/001.png'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Qual seu pokemon favorito?',
              style: TextStyle(fontSize: 20),
            ),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(child: child, scale: animation);
              },
              child: Image.network(
                this.pokemons[_pokeCount],
                /// Esta key faz com que o AnimatedSwitcher inteprete o proximo item
                /// como um novo child toda vez que o contador muda, então começando
                /// a animação toda vez que o contador é alterado                key: ValueKey<int>(_count),
              ),
            ),
            RaisedButton(
              child: const Text('Increment'),
              onPressed: () {
                setState(() {
                  _pokeCount += 1;
                  if (_pokeCount > 3) _pokeCount = 0;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

/// https://api.flutter.dev/flutter/widgets/AnimatedSwitcher-class.html
