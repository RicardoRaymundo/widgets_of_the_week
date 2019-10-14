import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class CounterText extends StatelessWidget {

  /// Variável que recebe um listener que é acionado ao mudar seu valor
  final ValueListenable<int> _counter;

  CounterText(this._counter);

  @override
  Widget build(BuildContext context) {
    return  ValueListenableBuilder<int>(
      /// Essa classe é reconstruida sempre que o valor da variável a ser
      /// observada muda
        valueListenable: _counter,
        builder: (context, value, child) {
          return new Text(value.toString());
        });
  }
}