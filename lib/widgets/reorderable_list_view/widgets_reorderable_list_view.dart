import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetsReorderableListView extends StatefulWidget {
  @override
  _WidgetsReorderableListViewState createState() => _WidgetsReorderableListViewState();
}
/// ReorderableListView é como uma ListView, exceto por conseguir reordenar os
/// itens da lista com um efeito de drag-and-drop.
class _WidgetsReorderableListViewState extends State<WidgetsReorderableListView> {

  /// Lista de itens
  List<int> intList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReorderableListView(
        /// Evendo disparado ao alterar a ordem da lista
        onReorder: (oldIndex, newIndex) {
          setState(() {
            /// Essas duas linhas são soluções alternativas para problemas de re-ordem.
            if (newIndex > intList.length) newIndex = intList.length;
            if (oldIndex < newIndex) newIndex--;

            /// Remove da lista o item com o index antigo e depois o adiciona
            /// novamente à lista com seu novo index.
            int item = intList[oldIndex];
            intList.remove(item);
            intList.insert(newIndex, item);
          });
        },
        header: Text('This is my Header!'),
        children: <Widget>[
          for(final item in this.intList)
            Padding(
              /// Cada item da ReorderableListView deve ter uma key única.
            key: ValueKey(item),
              padding: EdgeInsets.all(8),
              child: Container(
                height: 50,
                padding: EdgeInsets.only(left: 10),
                color: Colors.greenAccent,
                child: ListTile(
                  contentPadding: EdgeInsets.all(3),
                  title: Text('Item #$item'),
                ),
              )
              ,
            )
        ],
      ),
    );
  }
}
