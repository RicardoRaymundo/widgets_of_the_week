import 'package:flutter/material.dart';
import 'colored_pages/colored_page_first.dart';
import 'colored_pages/colored_page_last.dart';
import 'colored_pages/colored_page_middle.dart';

class PageViewSimplePage extends StatefulWidget {
  PageViewSimplePage({Key key}) : super(key: key);


  @override
  _PageViewSimplePageState createState() => _PageViewSimplePageState();
}

class _PageViewSimplePageState extends State<PageViewSimplePage> {
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
