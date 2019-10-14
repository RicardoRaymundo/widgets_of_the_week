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
              /// Envolve a imagem em um Hero
              /// Cada Hero criado tem sua tag única
              /// Ao clicar, o Hero faz o push para a pagina de detalhe
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

  WidgetsHeroDetail _showDonutDetail(int id) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return WidgetsHeroDetail(id);
        },
      ),
    );
  }
}

/// https://fluttersensei.com/posts/the-toobox-hero-animations/