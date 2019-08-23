import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'sliver_appbar_delegate.dart';


class WidgetsSliverListGrid extends StatelessWidget {

  /// Método da classe que cria os headers das listas e grids
  SliverPersistentHeader makeHeader(String headerText) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: SliverAppBarDelegate(
        minHeight: 60.0,
        maxHeight: 200.0,
        child: Container(
            color: Colors.lightBlue, child: Center(child: Text(headerText))),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            makeHeader('Header Section 1'),
            SliverGrid.count(
              /// Número de itens por linha
              crossAxisCount: 3,
              children: [
                /// Recebendo uma lista de filhos
                Container(color: Colors.red, height: 150.0),
                Container(color: Colors.purple, height: 150.0),
                Container(color: Colors.green, height: 150.0),
                Container(color: Colors.orange, height: 150.0),
                Container(color: Colors.yellow, height: 150.0),
                Container(color: Colors.pink, height: 150.0),
                Container(color: Colors.cyan, height: 150.0),
                Container(color: Colors.indigo, height: 150.0),
                Container(color: Colors.blue, height: 150.0),
              ],
            ),
            makeHeader('Header Section 2'),
            SliverFixedExtentList(
              /// Altura dos itens
              itemExtent: 150.0,
              delegate: SliverChildListDelegate(
                [
                  /// Recebendo uma lista de filhos
                  Container(color: Colors.red),
                  Container(color: Colors.purple),
                  Container(color: Colors.green),
                  Container(color: Colors.orange),
                  Container(color: Colors.yellow),
                ],
              ),
            ),
            makeHeader('Header Section 3'),
            SliverGrid(
              gridDelegate: new SliverGridDelegateWithMaxCrossAxisExtent(
                ///Definições de tamanho e espaçamento
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 4.0,
              ),
              delegate: new SliverChildBuilderDelegate(
                /// Construindo uma lista de filhos por iteração do builder
                    (BuildContext context, int index) {
                  return new Container(
                    alignment: Alignment.center,
                    color: Colors.teal[100 * (index % 9)],
                    child: new Text('grid item $index'),
                  );
                },
                /// Contagem de itens
                childCount: 20,
              ),
            ),
            makeHeader('Header Section 4'),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(color: Colors.pink, height: 150.0),
                  Container(color: Colors.cyan, height: 150.0),
                  Container(color: Colors.indigo, height: 150.0),
                  Container(color: Colors.blue, height: 150.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



