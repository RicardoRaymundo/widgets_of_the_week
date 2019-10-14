import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:widgets_of_the_week/widgets/custom_paint/widgets_custom_painter.dart';

class WidgetsCustomPaint extends StatefulWidget {
  @override
  _WidgetsCustomPaintState createState() => _WidgetsCustomPaintState();
}

class _WidgetsCustomPaintState extends State<WidgetsCustomPaint>
    with TickerProviderStateMixin {
  double percentage = 0.0;
  double newPercentage = 0.0;
  AnimationController percentageAnimationController;

  @override
  void initState() {
    super.initState();
    setState(() {
      percentage = 0.0;
    });
    percentageAnimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 1000))
      ..addListener(() {
        setState(() {
          percentage = lerpDouble(
              percentage, newPercentage, percentageAnimationController.value);
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Center(
      child: new Container(
        height: 200.0,
        width: 200.0,
        child: new CustomPaint(
          foregroundPainter: new WidgetsCustomPainter(
              lineColor: Colors.amber,
              completeColor: Colors.blueAccent,
              completePercent: percentage,
              width: 8.0),
          child: new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new RaisedButton(
                color: Colors.purple,
                splashColor: Colors.blueAccent,
                shape: new CircleBorder(),
                child: new Text("Click"),
                onPressed: () {
                  setState(() {
                    percentage = newPercentage;
                    newPercentage += 10;
                    if (newPercentage > 100.0) {
                      percentage = 0.0;
                      newPercentage = 0.0;
                    }
                    percentageAnimationController.forward(from: 0.0);
                  });
                }),
          ),
        ),
      ),
    ));
  }
}


