import 'package:flutter/material.dart';
import 'package:widgets_of_the_week/widgets/hero/widgets_hero_detail.dart';




class WidgetsHero extends StatefulWidget {
  WidgetsHero({Key key}) : super(key: key);

  @override
  _WidgetsHeroState createState() => _WidgetsHeroState();
}

class _WidgetsHeroState extends State<WidgetsHero> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 30,
          children: List.generate(6, (index) {
            var i = index + 1;

            return InkWell(
              child: Hero(
                tag: 'donut' + (i).toString(),
                child: Image.asset('assets/donuts' + (i).toString() + '.png'),
              ),
              onTap: () => _showDonutDetail(i),
            );
          }),
        ),
      ),
    );
  }

  void _showDonutDetail(int id) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return DetailPage(id);
        },
      ),
    );
  }
}