import 'package:flutter/cupertino.dart';
import 'package:widgets_of_the_week/widgets/clip_r_rect/widgets_clip_r_rect.dart';
import 'package:widgets_of_the_week/widgets/clip_r_rect/widgets_clip_r_rect_zigzag_clipper.dart';

class WidgetsClipRRectZigZag extends StatelessWidget {
  Widget child;
  ClipType clipType;

  WidgetsClipRRectZigZag({this.child, this.clipType = ClipType.curved});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WidgetsClipRRectZigZagClipper(clipType),
      child: this.child,
    );
  }
}