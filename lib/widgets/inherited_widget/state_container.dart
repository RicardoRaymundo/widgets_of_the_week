import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

//TODO :: Verificar se esse padrão é valido

class ShoppingCart extends InheritedWidget {
  const ShoppingCart({
    Key key,
    @required this.info,
    this.child
  });
  static ShoppingCartInfo of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(ShoppingCart) as ShoppingCart).info;
  }
  final ShoppingCartInfo info;
  final Widget child;

  @override
  bool updateShouldNotify(ShoppingCart old) => !IterableEquality().equals(info.productIds, old.info.productIds);
}


class ShoppingCartInfo {
  final List<int> productIds;

  ShoppingCartInfo({this.productIds});
}