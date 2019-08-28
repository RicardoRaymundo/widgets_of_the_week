import 'package:flutter/material.dart';

class WidgetsAbsorbPointer extends StatefulWidget {
  WidgetsAbsorbPointer() : super();

  final String title = "Tip Demo";

  @override
  WidgetsAbsorbPointerState createState() => WidgetsAbsorbPointerState();
}

class WidgetsAbsorbPointerState extends State<WidgetsAbsorbPointer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: AbsorbPointer(
          absorbing: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              RaisedButton(
                child: Text("Click Me"),
                onPressed: () {print('aaa');},
              ),
              RaisedButton(
                child: Text("Click Me"),
                onPressed: () {},
              ),
              RaisedButton(
                child: Text("Click Me"),
                onPressed: () {},
              )
            ],
          ),
        ));
  }
}
