import 'package:flutter/cupertino.dart';
import 'package:widgets_of_the_week/widgets/inherited_model/color_registry.dart';
import 'package:widgets_of_the_week/widgets/inherited_model/colored_box.dart';
import 'package:widgets_of_the_week/widgets/inherited_model/number_model.dart';

class InheritedModelView extends StatelessWidget {
  final ColorRegistry r = ColorRegistry();

  final NUMBER_TYPE type;

  InheritedModelView({Key key, this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NumberModel model = NumberModel.of(context, aspect: type);

    return ColoredBox(
      color: r.nextColor(),
      child: model.getLabeledText(type),
    );
  }
}