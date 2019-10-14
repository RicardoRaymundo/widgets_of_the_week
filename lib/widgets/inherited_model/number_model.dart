import 'package:flutter/cupertino.dart';

enum NUMBER_TYPE {
  FIRST,
  SECOND,
  THIRD,
}

class NumberModel extends InheritedModel<NUMBER_TYPE> {
  final int firstValue, secondValue, thirdValue;

  NumberModel({
    @required this.firstValue,
    @required this.secondValue,
    @required this.thirdValue,
    @required Widget child,
  }) : super(child: child);

  static NumberModel of(BuildContext context, {NUMBER_TYPE aspect}) {
    return InheritedModel.inheritFrom<NumberModel>(context, aspect: aspect);
  }

  Widget getLabeledText(NUMBER_TYPE type) {
    switch (type) {
      case NUMBER_TYPE.FIRST:
        return Text('First Number: $firstValue');
      case NUMBER_TYPE.SECOND:
        return Text('Second Number: $secondValue');
      case NUMBER_TYPE.THIRD:
        return Text('Third Number: $thirdValue');
    }
    return Text('Unknown Number Type $type');
  }

  @override
  bool updateShouldNotify(NumberModel old) {
    return firstValue != old.firstValue ||
        secondValue != old.secondValue ||
        thirdValue != old.thirdValue;
  }

  @override
  bool updateShouldNotifyDependent(NumberModel old, Set<NUMBER_TYPE> aspects) {
    return (aspects.contains(NUMBER_TYPE.FIRST) &&
        old.firstValue != firstValue) ||
        (aspects.contains(NUMBER_TYPE.SECOND) &&
            old.secondValue != secondValue) ||
        (aspects.contains(NUMBER_TYPE.THIRD) && old.thirdValue != thirdValue);
  }
}