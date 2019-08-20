import 'package:flutter/material.dart';
import 'package:widgets_of_the_week/resourses/resource_custom_navigator.dart';
import 'package:widgets_of_the_week/resourses/custom_transition_animations.dart';


class HomePageCard extends StatelessWidget {
  BuildContext context;
  Widget widget;
  String widgetTitle;
  HomePageCard({BuildContext context, String this.widgetTitle, Widget this.widget});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: 290.0,
      height: 115.0,
      child: Card(
        color: Colors.lightBlueAccent,
        // Wrap children in a Padding widget in order to give padding.
        child: InkWell(
          onTap: (){
            CustomNavigator.push(context, this.widget, CustomTransitionAnimations.slideTransitionLeft);
          },
          child: Padding(
            // The class that controls padding is called 'EdgeInsets'
            // The EdgeInsets.only constructor is used to set
            // padding explicitly to each side of the child.
            padding: const EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
              left: 64.0,
            ),
            // Column is another layout widget -- like stack -- that
            // takes a list of widgets as children, and lays the
            // widgets out from top to bottom.
            child: Column(
              // These alignment properties function exactly like
              // CSS flexbox properties.
              // The main axis of a column is the vertical axis,
              // `MainAxisAlignment.spaceAround` is equivalent of
              // CSS's 'justify-content: space-around' in a vertically
              // laid out flexbox.
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(this.widgetTitle,
                    style: Theme.of(context).textTheme.headline),
                Text('Backyard',
                    style: Theme.of(context).textTheme.subhead),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                    ),
                    Text(': 10 / 10')
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*
Container(
padding: EdgeInsets.all(5),
width: deviceSize.width * 0.5,
height: 130,
child: Placeholder(),
);
 */
