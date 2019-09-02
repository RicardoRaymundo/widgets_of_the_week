import 'package:flutter/material.dart';
import 'package:widgets_of_the_week/widgets/inherited_widget/form_page.dart';
import 'package:widgets_of_the_week/widgets/inherited_widget/state_container.dart';

class WidgetsInheritedWidget extends StatelessWidget {

  final String appTitle = 'Shopping Cart Demo';
  @override
  Widget build(BuildContext context) {

    return ShoppingCart(
      info: ShoppingCartInfo(productIds: <int>[1, 2, 3, 4, 5, 6]),
      child: MaterialApp(
        title: appTitle,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ProductFeed(),
      ),
    );
  }
}