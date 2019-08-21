import 'package:flutter/material.dart';
import 'json_data.dart';

class DataList extends StatelessWidget {
  // Variavel que recebe o snapshot.data do componente pai
  final List<JsonData> jsonData;

  DataList({Key key, this.jsonData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: jsonData.length,
      itemBuilder: (context, index) {
        return Column(
          children: <Widget>[
            SizedBox(height: 50,),
            Text(jsonData[index].id.toString()),
            Text(jsonData[index].body),
          ],
        );
      },
    );
  }
}