import 'package:flutter/material.dart';

class WidgetsPositioned extends StatefulWidget {
  @override
  _WidgetsPositionedState createState() => _WidgetsPositionedState();
}

class _WidgetsPositionedState extends State<WidgetsPositioned> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://fsa.zobj.net/crop.php?r=O17oRVoJID18jGWpC_nCGJJ1jGGQAGxhrsJepg0iei7MZxQlhKKwZy_18bMmy2iOYrM4u-VBFxkOhFTKXz9SZA7qy8CvK2AIq6ofGP8RnOfvyWp0jm-GzTJLQM9ystXyOtCYFKAWtGpNgZZwyxgr86VVhz0ylCMSG2PO44gKhvz3tky3eYECerMClms'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Positioned(
            /// Posiciona widgets filhos dentro do Stack com precisão
            /// Define espaçamento a partir de top, bottom, left e right
            /// Tambem define width e height
            bottom: 40.0,
            left: 10.0,
            right: 10.0,
            child: Card(
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Neo York",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// https://medium.com/flutter-community/a-deep-dive-into-stack-in-flutter-3264619b3a77