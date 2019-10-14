import 'package:flutter/material.dart';
import 'colored_pages/colored_page_first.dart';
import 'colored_pages/colored_page_last.dart';
import 'colored_pages/colored_page_middle.dart';

class WidgetsPageViewSimple extends StatefulWidget {
  WidgetsPageViewSimple({Key key}) : super(key: key);


  @override
  _WidgetsPageViewSimpleState createState() => _WidgetsPageViewSimpleState();
}

class _WidgetsPageViewSimpleState extends State<WidgetsPageViewSimple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        //PageView podem outros PageView como filho, como feito abaixo
        //Mudando o scrollDirection, posso acessar meus PageView verticalmente
        scrollDirection: Axis.vertical,
        children: <Widget>[
          //Widgets importados do diretório colored_pages
          ColoredPageFirst(),
          ColoredPageMiddle(),
          ColoredPageLast(),
        ],
      ),
    );
  }
}
