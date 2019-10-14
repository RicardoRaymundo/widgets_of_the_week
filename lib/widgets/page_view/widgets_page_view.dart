import 'package:flutter/material.dart';


class WidgetsPageView extends StatefulWidget {
  @override
  _WidgetsPageViewState createState() => _WidgetsPageViewState();
}

class _WidgetsPageViewState extends State<WidgetsPageView> {
  var currentPageValue;
  PageController pageController;

  @override
  initState() {
    super.initState();

    this.currentPageValue = 0.0;
    this.pageController = PageController();

    this.pageController.addListener(() {
      currentPageValue = pageController.page;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        itemBuilder: (context, position) {
          if (position == currentPageValue.floor()) {
            return Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()..setEntry(3, 2, 0.001)
                ..rotateX(currentPageValue - position)
                ..rotateY(currentPageValue - position)
                ..rotateZ(currentPageValue - position),
              child: Container(
                color: position % 2 == 0 ? Colors.blue : Colors.pink,
                child: Center(
                  child: Text(
                    "Page",
                    style: TextStyle(color: Colors.white, fontSize: 22.0),
                  ),
                ),
              ),
            );
          } else if (position == currentPageValue.floor() + 1){
            return Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()..setEntry(3, 2, 0.001)
                ..rotateX(currentPageValue - position)
                ..rotateY(currentPageValue - position)
                ..rotateZ(currentPageValue - position),
              child: Container(
                color: position % 2 == 0 ? Colors.blue : Colors.pink,
                child: Center(
                  child: Text(
                    "Page",
                    style: TextStyle(color: Colors.white, fontSize: 22.0),
                  ),
                ),
              ),
            );
          } else {
            return Container(
              color: position % 2 == 0 ? Colors.blue : Colors.pink,
              child: Center(
                child: Text(
                  "Page",
                  style: TextStyle(color: Colors.white, fontSize: 22.0),
                ),
              ),
            );
          }
        },
        itemCount: 10,
        physics: BouncingScrollPhysics(),
      ),
    );
  }



}
