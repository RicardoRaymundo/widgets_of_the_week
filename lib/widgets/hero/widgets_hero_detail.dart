import 'package:flutter/material.dart';

class WidgetsHeroDetail extends StatefulWidget {
  final int id;

  WidgetsHeroDetail(this.id);

  @override
  _WidgetsHeroDetailState createState() => _WidgetsHeroDetailState();
}

class _WidgetsHeroDetailState extends State<WidgetsHeroDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eat it!'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: SizedBox.expand(
          child: Hero(
            tag: 'donut' + widget.id.toString(),
            child: Image.asset(
              'assets/donuts' + widget.id.toString() + '.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}