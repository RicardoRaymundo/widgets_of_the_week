import 'package:flutter/material.dart';

import 'home_page_card.dart';

import 'package:widgets_of_the_week/widgets/safe_area/safe_area.dart';
import 'package:widgets_of_the_week/widgets/expanded/expanded.dart';
import 'package:widgets_of_the_week/widgets/wrap/wrap.dart';


class HomePage extends StatelessWidget {
  // Mapa de Widgets a serem listados
  final Map<String, Widget> weeklyWidgets = {
    'Safe Area': SafeAreaPage(),
    'Expanded': ExpandedPage(),
    'Wrap': WrapPage(),
    'Safe Areaa': SafeAreaPage(),
    'Safe Areasx': SafeAreaPage(),
    'Safe Asdareax': SafeAreaPage(),
    'Safe Arcceax': SafeAreaPage(),
    'Safe Arzeax': SafeAreaPage(),
    'Safe Arccceax': SafeAreaPage(),
  };

  @override
  Widget build(BuildContext context) {
    // Cada chave e valor do mapa separados em duas listas
    final List<String> widgetsKeys = weeklyWidgets.keys.toList();
    final List<Widget> widgetsValues = weeklyWidgets.values.toList();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: ListView.builder(
          // O Tamamnho da lista de Cards é o mesmo tamanho da lista de Widgets
          itemCount: this.weeklyWidgets.length,

          // Itera cada Card passando o Widget e seu respectivo título
          itemBuilder: (context, index) {
            return HomePageCard(widgetTitle: widgetsKeys[index], widget: widgetsValues[index],);
          },
        ),
      ),
    );
  }
}
