import 'package:flutter/material.dart';

class WidgetsAlign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(

        /// Alinhamento default da classe Align
        alignment: Alignment.center,
        child: Container(
          color: Colors.blue,
          height: 100,
          width: 100,
          child: Stack(
            children: <Widget>[
              Align(

                /// Alinhamento do eixo X e Y, respectivamente, com o range de
                /// -1 à 1
                alignment: Alignment(0, 0),
                child: Text('Hello!'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
