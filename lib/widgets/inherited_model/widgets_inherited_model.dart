
import 'package:flutter/material.dart';
import 'package:widgets_of_the_week/widgets/inherited_model/inherited_model_view.dart';
import 'package:widgets_of_the_week/widgets/inherited_model/inherited_widget_view.dart';
import 'package:widgets_of_the_week/widgets/inherited_model/number_model.dart';


class WidgetsInheritedModel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inherited Model vs Inherited Widget'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text('Inherited Model Views'),
                InheritedModelView(type: NUMBER_TYPE.FIRST),
                InheritedModelView(type: NUMBER_TYPE.SECOND),
                InheritedModelView(type: NUMBER_TYPE.THIRD),
                SizedBox(height: 25.0),
                Text('Inherited Widget Views'),
                InheritedWidgetView(type: NUMBER_TYPE.FIRST),
                InheritedWidgetView(type: NUMBER_TYPE.SECOND),
                InheritedWidgetView(type: NUMBER_TYPE.THIRD),
              ],
            ),
          ],
        ),
      ),
    );
  }
}