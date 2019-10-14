import 'package:flutter/material.dart';
import 'package:widgets_of_the_week/widgets/clip_r_rect/widgets_clip_r_rect_item.dart';
import 'package:widgets_of_the_week/widgets/clip_r_rect/widgets_clip_r_rect_zigzag.dart';

// TODO :: Avaliar se há necessidade de nomes tão extensos. Caso não haja, renomear classes desse diretório

enum ClipType { pointed, curved, arc, traingle, waved }

List<WidgetsClipRRectItem> widgetsClipRRectItens = [
  WidgetsClipRRectItem("Triangle", "assets/banner.png", "The image is down pointed traingle",
      ClipType.traingle),
  WidgetsClipRRectItem("Arc", "assets/banner.png",
      "The bottom edge of the above edge is arc-shaped", ClipType.arc),
  WidgetsClipRRectItem(
      "Pointed Edge multiple ",
      "assets/banner.png",
      "The bottom edge of the above image is multiple pointed.",
      ClipType.pointed),
  WidgetsClipRRectItem("Rounded multiple curve", "assets/banner.png",
      "The bottom edge of the above image is multiple rounded", ClipType.curved),

  WidgetsClipRRectItem("Rounded multiple curve", "assets/banner.png",
      "The bottom edge of the above image is wave", ClipType.waved)
];

class WidgetsClipRRect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black12,
        child: ListView(
            children: widgetsClipRRectItens.map((item) => createClippedWidget(item)).toList()),
      ),
    );
  }

  Widget createClippedWidget(WidgetsClipRRectItem WidgetsClipRRectitem) {
    return Card(
      elevation: 10,
      margin: EdgeInsets.all(16),
      color: Colors.green
      ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          WidgetsClipRRectZigZag(
              clipType: WidgetsClipRRectitem.clipType,
              child: Image.asset(
                WidgetsClipRRectitem.image,
                height: 100,
                width: double.infinity,
                fit: BoxFit.cover,
              )),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              WidgetsClipRRectitem.name,
              style: TextStyle(fontSize: 26, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0, left: 16, right: 16),
            child: Text(WidgetsClipRRectitem.description, style: TextStyle(fontSize: 18, color: Colors.white70),),
          )
        ],
      ),
    );
  }
}