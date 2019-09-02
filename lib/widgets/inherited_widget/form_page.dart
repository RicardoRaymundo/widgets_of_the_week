import 'package:flutter/material.dart';
import 'package:widgets_of_the_week/widgets/inherited_widget/state_container.dart';

class ProductFeed extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final info = ShoppingCart.of(context);
    return Scaffold(
      appBar: AppBar(title: Text('Product Feed')),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('${info.productIds.length} selected'),
              RaisedButton(
                child: Text('Product A'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetail()),
                  );
                },
              ),
            ]
        ),
      ),
    );
  }
}

class ProductDetail extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final info = ShoppingCart.of(context);
    return Scaffold(
      appBar: AppBar(title: Text('Retail Store')),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Product A'),
              Text('${info.productIds.length} selected'),
            ]
        ),
      ),
    );
  }
}