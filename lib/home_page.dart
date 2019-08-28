import 'package:flutter/material.dart';

import 'home_page_card.dart';

import 'package:widgets_of_the_week/widgets/safe_area/widgets_safe_area.dart';
import 'package:widgets_of_the_week/widgets/expanded/widgets_expanded.dart';
import 'package:widgets_of_the_week/widgets/wrap/widgest_wrap.dart';
import 'package:widgets_of_the_week/widgets/animated_container/widgets_animated_container.dart';
import 'package:widgets_of_the_week/widgets/opacity/widgets_opacity.dart';
import 'package:widgets_of_the_week/widgets/future_builder/list_json.dart';
import 'package:widgets_of_the_week/widgets/fade_transition/widgets_fade_transition.dart';
import 'package:widgets_of_the_week/widgets/fab/widgets_fab.dart';
import 'package:widgets_of_the_week/widgets/page_view/widgets_page_view.dart';
import 'package:widgets_of_the_week/widgets/page_view/simple/page_view_simple_main.dart';
import 'package:widgets_of_the_week/widgets/table/widgets_table.dart';
import 'package:widgets_of_the_week/widgets/sliver/widgets_sliver_app_bar.dart';
import 'package:widgets_of_the_week/widgets/sliver/list_grid/widgets_sliver_list_grid.dart';
import 'package:widgets_of_the_week/widgets/fade_in_image/widgets_fade_in_image.dart';
import 'package:widgets_of_the_week/widgets/stream_builder/widgets_stream_builder.dart';
import 'package:widgets_of_the_week/widgets/inherited_model/widgets_inherited_model.dart';
import 'package:widgets_of_the_week/widgets/clip_r_rect/widgets_clip_r_rect.dart';
import 'package:widgets_of_the_week/widgets/hero/widgets_hero.dart';
import 'package:widgets_of_the_week/widgets/custom_paint/widgets_custom_paint.dart';
import 'package:widgets_of_the_week/widgets/tooltip/widgets_tooltip.dart';
import 'package:widgets_of_the_week/widgets/sized_box/widgets_sized_box.dart';
import 'package:widgets_of_the_week/widgets/layout_builder/widgets_layout_builder.dart';

class HomePage extends StatelessWidget {
  // Mapa de Widgets a serem listados
  final Map<String, Widget> weeklyWidgets = {
    'Safe Area': SafeAreaPage(),
    'Expanded': WidgetsExpanded(),
    'Wrap': WrapPage(),
    'Animated Container': AnimatedContainerPage(),
    'Opacity': OpacityPage(),
    'Future Builder': JsonList(),
    'Fade Transition': FadeTransitionPage(),
    'Floating Action Button': FabPage(),
    'Page View': PageViewSimplePage(),
    'Table': WidgetsTablePage(),
    'Sliver App Bar': WidgetsSliverAppBar(),
    'Sliver List and Grid': WidgetsSliverListGrid(),
    'Fade In Image': WidgetsFadeInImage(),
    'Stream Builder': WidgetsStreamBuilder(),
    'Inherited Model': NumberManagerWidget(updateMs: 1000, child: MyAppInherited()),
    'ClipRRect': CardListScreen(),
    'Hero' : WidgetsHero(),
    'Custom Paint' : WidgetsCustomPaint(),
    'Tooltip' : WidgetsTooltip(),
    'Sized Box': WidgetsSizedBox(),
    'Layout Builder' : WidgetsLayoutBuilder(),

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
