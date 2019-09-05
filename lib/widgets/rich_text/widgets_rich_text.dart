import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

/// RichText permite uma costumizacão mais completa de textos, podendo customizar
/// certos trexos do do texto com diferentos estilos de TextStyle.
class WidgetsRichText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// Variável de estilo de texto padrão
    TextStyle defaultStyle = TextStyle(fontSize: 24, color: Colors.black);

    return Material(
      child: Scaffold(
        body: Center(
          child: Container(
            height: 400,
            width: 200,
            child: Column(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    text: 'Hello ',

                    /// Estilo default do app
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      /// Esta lista de children compõem o texto texto do RichText,
                      /// cada TextSpan pode ter um estilo próprio.
                      /// Aqui no código, vemos o texto separado, porém eles são
                      /// concatenados em uma mesma caixa de texto, depois de compilado.
                      TextSpan(
                          text: 'bold',
                          style: new TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: ' world!'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        /// Trexo do texto contendo um hyperlink
                          text: ' This ',

                          /// Ao clicar no hyperlink, direciona o usuário ao
                          /// link definido abaixo
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {

                            /// biblioteca url_launcher
                              launcher.launch(
                                  'https://github.com/RicardoRaymundo/widgets_of_the_week');
                            },

                          /// Adicionado cor azul e texto sublinhado ao texto,
                          /// juntamente com o estilo padrão
                          style: defaultStyle.copyWith(
                              decoration: TextDecoration.underline,
                              color: Colors.blue)),
                      TextSpan(
                          text: "hyper link embedded text.",
                          style: defaultStyle)
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(
                    style: defaultStyle,
                    text: " The RichText widget allows you to . ",
                    children: <TextSpan>[
                      TextSpan(
                          text: 'style  ',
                          style: TextStyle(fontWeight: FontWeight.w700)),
                      TextSpan(
                        text: 'your text',
                        style: TextStyle(color: Colors.redAccent, fontSize: 38),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Border to text',
                          style: defaultStyle.copyWith(
                              background: Paint()
                                ..color = Colors.red
                                ..style = PaintingStyle.stroke)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// https://androidkt.com/flutter-richtext-widget-example/
