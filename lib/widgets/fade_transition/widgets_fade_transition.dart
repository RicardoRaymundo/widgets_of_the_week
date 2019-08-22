import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class LogoApp extends StatefulWidget {
  _LogoAppState createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp> with TickerProviderStateMixin {

  /// Declarando as variaveis: animacão e controlador de animação.
  AnimationController controller;
  Animation<double> animation;

  initState() {
    super.initState();
    /// Definindo as variaveis:  controlador de animação e animacão
    controller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    /// Verifica o status da animação, quando concluida, faz a animação contrária
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });

    /// Inicia a animação pela primeira vez
    controller.forward();
  }

  Widget build(BuildContext context) {

    return Container(
        color: Colors.white,
        child: FadeTransition(
          /// A variavel de animação controla a opacidade do widget
            opacity: animation,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Icon(Icons.check, size: 100.0,color: Colors.green,),
                ]
            )
        )
    );
  }
}