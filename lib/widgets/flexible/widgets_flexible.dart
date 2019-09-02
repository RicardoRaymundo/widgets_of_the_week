import 'package:flutter/material.dart';

class WidgetsFlexible extends StatelessWidget {

  Widget boxText = Flexible(
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.cyan[100],
          width: 3.0,
          style: BorderStyle.solid,
        ),
      ),
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Text',
            style: null,
          ),
          Text(
            'Text',
            style: null,
          ),

          /// Flexible ocupa o espaço disponível, portanto nao tem um tamanho
          /// pré definido
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: '',
                labelText: 'label',
              ),
              obscureText: true,
            ),
          ),
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.topStart,
        textDirection: TextDirection.ltr,
        fit: StackFit.loose,
        overflow: Overflow.clip,
        children: <Widget>[
          Container(
            color: Colors.red[200],
            margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.05,
              right: MediaQuery.of(context).size.width * 0.05,
              top: MediaQuery.of(context).size.height * 0.4,
              bottom: MediaQuery.of(context).size.height * 0.1,
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Form(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                children: <Widget>[
                  Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      boxText,
                      boxText,
                    ],
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

///https://stackoverflow.com/questions/47339406/flutter-layout-how-can-i-put-a-row-inside-a-flex-or-another-row-in-flutter-a
