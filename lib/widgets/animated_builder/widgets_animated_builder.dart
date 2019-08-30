import 'dart:math';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class AnimatedLogo extends AnimatedWidget {

  /// Definindo os Tween, que são os estados iniciais e finais da animação
  static final _opacityTween = Tween<double>(begin: 0.1, end: 1);
  static final _sizeTween = Tween<double>(begin: 50, end: 300);

  AnimatedLogo({Key key, Animation<double> animation})
      : super(key: key, listenable: animation);

  Widget build(BuildContext context) {
    final Animation<double> animation = listenable as Animation<double>;
    return Center(
      child: Opacity(
        opacity: _opacityTween.evaluate(animation),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10),

          /// É passado os valores de altura, largura e opacidade, em tempo real,
          /// de acordo com o estado da animação
          height: _sizeTween.evaluate(animation),
          width: _sizeTween.evaluate(animation),
          child: FlutterLogo(),
        ),
      ),
    );
  }
}

class WidgetsAnimatedBuilder extends StatefulWidget {
  _WidgetsAnimatedBuilderState createState() => _WidgetsAnimatedBuilderState();
}

class _WidgetsAnimatedBuilderState extends State<WidgetsAnimatedBuilder> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();

    /// Define o controlador da animacão
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);

    /// Define a curva da animacão
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn)

      /// Cria um Listener para verificar o estado final das animações,
      /// criando um loop
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) => AnimatedLogo(animation: animation);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

/// https://github.com/flutter/website/tree/master/examples/animation
