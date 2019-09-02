import 'package:flutter/material.dart';

class WidgetsSpacer extends StatelessWidget {
  Widget colorBox() {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.red,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            /// Os spacers são literalmente espaçadores, portanto são invisíveis
            /// e também ocupam o espaço disponivel.
            /// Para determinar o quanto de espaço cada Spacer deve assumir,
            /// devemos atribuir um valor de flex a eles. Por default, o flex dos spacers sao 1,
            /// e a soma de todos os flex é a proporção total do espaço disponível.
            /// Neste exemplo, a somas dos flex é 6

            colorBox(),

            /// Este Spacer ocupa 1/6 do espaco disponível
            Spacer(),
            colorBox(),

            /// Este Spacer ocupa 2/6 do espaco disponível
            Spacer(flex: 2,),
            colorBox(),

            /// Este Spacer ocupa 3/6 do espaco disponível
            Spacer(flex: 3,),
            colorBox(),
          ],
        ),
      )
    );
  }
}
