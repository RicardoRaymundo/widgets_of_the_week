import 'package:flutter/material.dart';

class WidgetsAspectRatio extends StatelessWidget {
  /// Aspect Ratio é um widget que define o tamanho do widget filho à uma
  /// determinada proporção de tela.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AspectRatio(
            /// Proporcão do widget filho
            aspectRatio: 3/4,
            child: Container(height: 50.0, width: 50.0, color: Colors.red),
          ),
        ),
      ),
    );
  }
}