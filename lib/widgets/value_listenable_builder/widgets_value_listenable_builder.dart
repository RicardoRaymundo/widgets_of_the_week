import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class WidgetsValueListenableBuilder extends StatelessWidget {
  final _counter = new ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ValueListenableBuilder example"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('You have pushed the button this many times:'),
              CounterText(_counter)
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _counter.value++,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ));
  }
}

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