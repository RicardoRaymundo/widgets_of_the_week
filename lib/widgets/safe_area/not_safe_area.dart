import 'package:flutter/material.dart';


class MyNotSafeArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topLeft,
        child: Text(
              'NOT SAFE AREA NOT SAFE AREA NOT SAFE AREA NOT SAFE AREA NOT SAFE AREA '
                  'NOT SAFE AREA NOT SAFE AREA NOT SAFE AREA NOT SAFE AREA NOT SAFE AREA '),

      ),
    );
  }
}