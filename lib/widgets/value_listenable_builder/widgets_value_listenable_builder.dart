import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:widgets_of_the_week/widgets/value_listenable_builder/counter_text.dart';

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