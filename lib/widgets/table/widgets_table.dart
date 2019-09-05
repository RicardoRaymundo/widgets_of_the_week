import 'package:flutter/material.dart';

class WidgetsTable extends StatefulWidget {
  @override
  _WidgetsTablePage createState() => _WidgetsTablePage();
}

class _WidgetsTablePage extends State<WidgetsTable> {
  bool _isBorderEnabled = false;
  var _actionIcon = Icons.border_all;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          child: Text(
            'Table Widget',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Ubuntu Regular'),
          ),
        ),
        actions: <Widget>[
          IconButton(
            /// Botão que ativa e dasativa as bordas da tabela
            icon: Icon(_actionIcon),
            onPressed: () => setState(() {
              _isBorderEnabled == false
                  ? _isBorderEnabled = true
                  : _isBorderEnabled = false;

              _isBorderEnabled
                  ? _actionIcon = Icons.border_clear
                  : _actionIcon = Icons.border_all;
            }),
          ),
        ],
      ),

      /// Tabela rolável
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 12),
        child: Table(

          /// Tabela iniciada sem bordas
          border: _isBorderEnabled ? TableBorder.all() : null,

          /// Alinhamento dos itens da tabela
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: <TableRow>[

            /// Primeira linha da tabela
            TableRow(children: <Widget>[
              FittedBox(
                fit: BoxFit.contain,
                child: Container(
                  margin: EdgeInsets.all(2),
                  color: Colors.red,
                  width: 48.0,
                  height: 70.0,
                  child: Center(
                    child: Text(
                      "Row 1 \n Element 1",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 6.0,
                          fontFamily: 'Ubuntu Regular'),
                    ),
                  ),
                ),
              ),
              FittedBox(
                fit: BoxFit.contain,
                child: Container(
                  margin: EdgeInsets.all(2),
                  color: Colors.orange,
                  width: 50.0,
                  height: 50.0,
                  child: Center(
                    child: Text(
                      "Row 1 \n Element 2",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 6.0,
                          fontFamily: 'Ubuntu Regular'),
                    ),
                  ),
                ),
              ),
              FittedBox(
                fit: BoxFit.contain,
                child: Container(
                  margin: EdgeInsets.all(2),
                  color: Colors.blue,
                  width: 50.0,
                  height: 50.0,
                  child: Center(
                    child: Text(
                      "Row 1 \n Element 3",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 6.0,
                          fontFamily: 'Ubuntu Regular'),
                    ),
                  ),
                ),
              ),
            ]),

            /// Segunda linha da tabela
            TableRow(children: <Widget>[
              FittedBox(
                fit: BoxFit.contain,
                child: Container(
                  margin: EdgeInsets.all(2),
                  color: Colors.lightBlue,
                  width: 50.0,
                  height: 48.0,
                  child: Center(
                    child: Text(
                      "Row 2 \n Element 1",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 6.0,
                          fontFamily: 'Ubuntu Regular'),
                    ),
                  ),
                ),
              ),
              FittedBox(
                fit: BoxFit.contain,
                child: Container(
                  margin: EdgeInsets.all(2),
                  color: Colors.green,
                  width: 48.0,
                  height: 48.0,
                  child: Center(
                    child: Text(
                      "Row 2 \n Element 2",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 6.0,
                          fontFamily: 'Ubuntu Regular'),
                    ),
                  ),
                ),
              ),
              FittedBox(
                fit: BoxFit.contain,
                child: Container(
                  margin: EdgeInsets.all(2),
                  color: Colors.blue,
                  width: 50.0,
                  height: 70.0,
                  child: Center(
                    child: Text(
                      "Row 2 \n Element 3",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 6.0,
                          fontFamily: 'Ubuntu Regular'),
                    ),
                  ),
                ),
              ),
            ]),

            /// Terceira linha da tabela
            TableRow(children: <Widget>[
              FittedBox(
                fit: BoxFit.contain,
                child: Container(
                  margin: EdgeInsets.all(2),
                  color: Colors.cyan,
                  width: 48.0,
                  height: 50.0,
                  child: Center(
                    child: Text(
                      "Row 3 \n Element 1",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 6.0,
                          fontFamily: 'Ubuntu Regular'),
                    ),
                  ),
                ),
              ),
              FittedBox(
                fit: BoxFit.contain,
                child: Container(
                  margin: EdgeInsets.all(2),
                  color: Colors.indigoAccent,
                  width: 50.0,
                  height: 70.0,
                  child: Center(
                    child: Text(
                      "Row 3 \n Element 2",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 6.0,
                          fontFamily: 'Ubuntu Regular'),
                    ),
                  ),
                ),
              ),
              FittedBox(
                fit: BoxFit.contain,
                child: Container(
                  margin: EdgeInsets.all(2),
                  color: Colors.deepOrangeAccent,
                  width: 50.0,
                  height: 50.0,
                  child: Center(
                    child: Text(
                      "Row 3 \n Element 3",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 6.0,
                          fontFamily: 'Ubuntu Regular'),
                    ),
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
