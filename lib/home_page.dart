import 'package:flutter/material.dart';
import 'package:widgets_of_the_week/widgets/safe_area/safe_area.dart';
import 'home_page_card.dart';

class HomePage extends StatelessWidget {
  final Map<String, Widget> weeklyWidgets = {
    'Safe Area': MySafeArea(),
    'Safe Areu': MySafeArea(),
    'Safe Areal': MySafeArea(),
    'Safe Areaa': MySafeArea(),
    'Safe Areasx': MySafeArea(),
    'Safe Asdareax': MySafeArea(),
    'Safe Arcceax': MySafeArea(),
    'Safe Arzeax': MySafeArea(),
    'Safe Arccceax': MySafeArea(),
  };

  @override
  Widget build(BuildContext context) {
    final List<String> widgetsKeys = weeklyWidgets.keys.toList();
    final List<Widget> widgetsValues = weeklyWidgets.values.toList();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: ListView.builder(
          itemCount: this.weeklyWidgets.length,
          itemBuilder: (context, index) {
            return HomePageCard(widgetTitle: widgetsKeys[index], widget: widgetsValues[index],);
          },
        ),
      ),
    );
  }
}
