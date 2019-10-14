import 'package:flutter/cupertino.dart';
import 'package:widgets_of_the_week/widgets/inherited_model/color_registry.dart';
import 'package:widgets_of_the_week/widgets/inherited_model/colored_box.dart';
import 'package:widgets_of_the_week/widgets/inherited_model/number_model.dart';

class InheritedWidgetView extends StatelessWidget {
  final ColorRegistry r = ColorRegistry();

  final NUMBER_TYPE type;

  InheritedWidgetView({Key key, this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NumberModel view = NumberModel.of(context);

    return ColoredBox(
      color: r.nextColor(),
      child: view.getLabeledText(type),
    );
  }
}
