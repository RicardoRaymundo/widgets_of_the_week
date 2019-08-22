import 'package:flutter/material.dart';

import 'home_page_card.dart';

import 'package:widgets_of_the_week/widgets/safe_area/widgets_safe_area.dart';
import 'package:widgets_of_the_week/widgets/expanded/widgets_expanded.dart';
import 'package:widgets_of_the_week/widgets/wrap/widgest_wrap.dart';
import 'package:widgets_of_the_week/widgets/animated_container/widgets_animated_container.dart';
import 'package:widgets_of_the_week/widgets/opacity/widgets_opacity.dart';
import 'package:widgets_of_the_week/widgets/future_builder/list_json.dart';
import 'package:widgets_of_the_week/widgets/fade_transition/widgets_fade_transition.dart';

class HomePage extends StatelessWidget {
  // Mapa de Widgets a serem listados
  final Map<String, Widget> weeklyWidgets = {
    'Safe Area': SafeAreaPage(),
    'Expanded': WidgetsExpanded(),
    'Wrap': WrapPage(),
    'Animated Container': AnimatedContainerPage(),
    'Opacity': OpacityPage(),
    'Future Builder': JsonList(),
    'Fade Transition': LogoApp(),
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
