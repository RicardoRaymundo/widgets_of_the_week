import 'package:flutter/material.dart';

class WidgetsAnimatedPadding extends StatefulWidget {
  @override
  _WidgetsAnimatedPaddingState createState() => _WidgetsAnimatedPaddingState();
}

/// Nesta classe temos um Container sem propriedades de tamanho definidas, este é
/// envolvido em um AnimatedPadding, que irá comprimir o Container conforme o
/// valor de padding é aumentado ou diminuído pelos botões abaixo.
class _WidgetsAnimatedPaddingState extends State<WidgetsAnimatedPadding> {
  double paddingValue = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              child: AnimatedPadding(
                /// AnimatedPadding recebe os parametros basicos de um Padding comum,
                /// porém tambem recebe parametros de durações de animação e curva de animação,
                /// que irão animar o widget filho
                duration: const Duration(seconds: 1),
                padding: EdgeInsets.all(this.paddingValue),
                curve: Curves.easeInOut,
                child: Container(
                  color: Colors.red,
                ),
              ),
            ),
            Text('Padding Value: ${this.paddingValue}'),
            Wrap(
              alignment: WrapAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    padding: EdgeInsets.all(10),
                    child: Text('Add Padding'),
                    onPressed: () {
                      setState(() {
                        /// Acrescentando padding
                        if(this.paddingValue < 170) this.paddingValue += 10;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    padding: EdgeInsets.all(10),
                    child: Text('Sub Padding'),
                    onPressed: () {
                      setState(() {
                        /// Subtraindo padding
                        if (this.paddingValue != 0) {
                          this.paddingValue -= 10;
                        }
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    padding: EdgeInsets.all(10),
                    child: Text('Reset Padding'),
                    onPressed: () {
                      setState(() {
                        /// Zerando o o valor de padding
                        if (this.paddingValue != 0) {
                          this.paddingValue = 0;
                        }
                        else this.paddingValue = 170;
                      });
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

/// https://fluttercentral.com/Articles/Post/1160

