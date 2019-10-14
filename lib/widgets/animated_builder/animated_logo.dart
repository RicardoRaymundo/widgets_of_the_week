import 'package:flutter/cupertino.dart';
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