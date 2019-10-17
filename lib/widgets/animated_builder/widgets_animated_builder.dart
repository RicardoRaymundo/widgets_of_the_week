import 'dart:math';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:widgets_of_the_week/widgets/animated_builder/animated_logo.dart';

class WidgetsAnimatedBuilder extends StatefulWidget {
  _WidgetsAnimatedBuilderState createState() => _WidgetsAnimatedBuilderState();
}

class _WidgetsAnimatedBuilderState extends State<WidgetsAnimatedBuilder> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();

    /// Define o controlador da animacão
    this.animationController =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);

    /// Define a curva da animacão
    this.animation = CurvedAnimation(parent: this.animationController, curve: Curves.easeIn)

      /// Cria um Listener para verificar o estado final das animações,
      /// criando um loop
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          this.animationController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          this.animationController.forward();
        }
      });
    this.animationController.forward();
  }

  @override
  Widget build(BuildContext context) => AnimatedLogo(animation: animation);

  @override
  void dispose() {
    this.animationController.dispose();
    super.dispose();
  }
}

/// https://github.com/flutter/website/tree/master/examples/animation
