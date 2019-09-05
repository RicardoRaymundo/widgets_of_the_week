import 'package:flutter/material.dart';

///
class WidgetsFloatingActionButton extends StatelessWidget {
  WidgetsFloatingActionButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Pressione o botão extendido abaixo'),
      ),

      /// Extende um Floating Action Button(FAB) e adiciona icone, label
      /// e cor de fundo.
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          /// Adicione o código desejado para quando o botão for pressionado
        },
        label: Text('Approve'),
        icon: Icon(Icons.thumb_up),
        backgroundColor: Colors.pink,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.lightBlueAccent,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
            title: new Text('Messages'),
          ),
        ],
      ),
      /// Centralizando o botão na BottomBar
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
