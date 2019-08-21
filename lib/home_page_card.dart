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
        // Posiciona uma area de clique no Card, ao clicar, entra na pagina do exemplo
        child: InkWell(
          onTap: (){
            CustomNavigator.push(context, this.widget, CustomTransitionAnimations.slideTransitionLeft);
          },
          child: Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
              left: 64.0,
            ),
            child: Column(
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
