import 'package:flutter/material.dart';
import 'package:chess_vectors_flutter/chess_vectors_flutter.dart';

class WidgetsDraggable extends StatefulWidget {
  @override
  _WidgetsDraggableState createState() => _WidgetsDraggableState();
}

class _WidgetsDraggableState extends State<WidgetsDraggable> with TickerProviderStateMixin {

  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Draggable(
              /// Widget que recebe seu valor e child
              data: 5,
              child: Container(
                width: 100.0,
                height: 100.0,
                child: Center(
                  child: Text(
                    "5",
                    style: TextStyle(color: Colors.white, fontSize: 22.0),
                  ),
                ),
                color: Colors.pink,
              ),
              /// Quando está sendo arrastado, o Draggable pode assumir uma
              /// forma diferente, como abaixo
              feedback: Container(
                width: 100.0,
                height: 100.0,
                child: Center(
                  child: Text(
                    "! 5 !",
                    style: TextStyle(color: Colors.white, fontSize: 22.0),
                  ),
                ),
                color: Colors.orange,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.green,
                  /// DragTarget é onde o draggable deve 'pousar'
                  child: DragTarget(
                    builder:
                        (context, List<int> candidateData, rejectedData) {
                      print(candidateData);
                      print(rejectedData);
                      return Center(child: Text("Even", style: TextStyle(color: Colors.white, fontSize: 22.0),));
                    },
                    onWillAccept: (data) {
                      return true;
                    },
                    onAccept: (data) {
                      /// Verifica se o número é par e manda uma mensagem ao usuário
                      /// de acordo com a verificação
                      if(data % 2 == 0) {
                        scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("Correct!")));
                      } else {
                        scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("Wrong!")));
                      }
                    },
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.deepPurple,
                  child: DragTarget(
                    builder:
                        (context, List<int> candidateData, rejectedData) {
                      return Center(child: Text("Odd", style: TextStyle(color: Colors.white, fontSize: 22.0),));
                    },
                    onWillAccept: (data) {
                      return true;
                    },
                    onAccept: (data) {
                      if(data % 2 != 0) {
                        scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("Correct!")));
                      } else {
                        scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("Wrong!")));
                      }
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}