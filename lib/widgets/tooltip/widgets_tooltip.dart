import 'package:flutter/material.dart';

class WidgetsTooltip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Tooltip(
          /// Mostra essa mensagem ao pressionar o child de Tooltip
          message: 'Mr. Anderson..',
          child: Image.network(
              'https://i.ytimg.com/vi/T7B7sihYTAQ/maxresdefault.jpg'),
        ),
      ),
    );
  }
}
