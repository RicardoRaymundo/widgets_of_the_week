import 'package:flutter/material.dart';

class WidgetsTransform extends StatefulWidget {
  WidgetsTransform({Key key}) : super(key: key); // changed

  @override
  _WidgetsTransformState createState() => _WidgetsTransformState();
}

class _WidgetsTransformState extends State<WidgetsTransform> {
  int _counter = 0;
  Offset _offset = Offset.zero; // changed

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Transform(
        // Transform widget
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.001) // perspective
          ..rotateX(0.01 * _offset.dy) // changed
          ..rotateY(-0.01 * _offset.dx), // changed
        alignment: FractionalOffset.center,
        child: GestureDetector(
          // new
          onPanUpdate: (details) => setState(() => _offset += details.delta),
          onDoubleTap: () => setState(() => _offset = Offset.zero),
          child: _defaultApp(context),
        ));
  }

  _defaultApp(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

/// https://medium.com/flutter/perspective-on-flutter-6f832f4d912e
