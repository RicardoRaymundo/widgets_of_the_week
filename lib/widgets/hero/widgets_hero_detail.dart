import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final int id;

  DetailPage(this.id);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
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