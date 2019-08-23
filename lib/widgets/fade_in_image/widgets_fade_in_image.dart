import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class WidgetsFadeInImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final title = 'Fade in images';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Stack(
          children: <Widget>[
            Center(child: CircularProgressIndicator()),
            Center(
              child: FadeInImage.memoryNetwork(
                /// Imagem Transparente importada de biblioteca externa
                placeholder: kTransparentImage,

                /// Link da imagem que será carregada com o efeito FadeIn
                image: 'https://picsum.photos/id/237/536/354',
              ),
            ),
          ],
        ),
      ),
    );
  }
}