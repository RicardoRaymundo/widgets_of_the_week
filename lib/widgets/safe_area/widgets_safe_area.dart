import 'package:flutter/material.dart';
import 'package:widgets_of_the_week/resourses/resource_custom_navigator.dart';
import 'package:widgets_of_the_week/resourses/custom_transition_animations.dart';
import 'widgets_not_safe_area.dart';

class SafeAreaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topLeft,

        // É literalmente uma area segura, impedindo do conteudo ser sobreposto
        // por cantos arredendados de certos aparelhos ou pela appBar do celular
        child: SafeArea(
          // Especifica a quais lados devem ser aplicados o SafeArea
          left: true,
          top: true,
          right: true,
          bottom: true,
          minimum: const EdgeInsets.all(16.0),
          child: Text(
              'SAFE AREA SAFE AREA SAFE AREA SAFE AREA SAFE AREA SAFE AREA SAFE AREA '
              'SAFE AREA SAFE AREA SAFE AREA SAFE AREA SAFE AREA SAFE AREA SAFE AREA '),
        ),
      ),
      floatingActionButton: FlatButton(
        color: Colors.lightBlueAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: () {
          CustomNavigator.push(context, NotSafeAreaPage(),
              CustomTransitionAnimations.slideTransitionLeft);
        },
        child: Text("Sem Safe Area -->"),
      ),
    );
  }
}
