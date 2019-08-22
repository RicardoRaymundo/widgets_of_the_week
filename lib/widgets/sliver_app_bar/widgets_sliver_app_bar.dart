import 'package:flutter/material.dart';

class WidgetsSliverAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              /// Tamanho da appbar, quando expandida
              expandedHeight: 200.0,

              /// A combinação das tres propriedades abaixo mudam o comportamento
              /// da appbar conforme a rolagem do usuário
              /// Lista de exemplos dessas combinações em
              /// https://api.flutter.dev/flutter/material/SliverAppBar-class.html
              floating: false,
              pinned: true,
              snap: false,

              /// Barra flexivel responsiva à mudanca de tamanho da SliverAppBar
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Collapsing Toolbar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                  background: Image.network(
                    "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
        body: Center(
          child: Text("Sample Text"),
        ),
      ),
    );
  }
}
