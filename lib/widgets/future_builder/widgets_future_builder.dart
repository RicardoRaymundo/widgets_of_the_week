import 'package:flutter/material.dart';

import 'data_json.dart';
import 'data_list.dart';





class WidgetsFutureBuilder extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final title = 'Long List';

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: FutureBuilder<List<JsonData>>(
        // A future é o processamento do json do servidor
        // Recebe List<JsonData>
        future: fetchPhotos(),
        builder: (context, snapshot) {
          // Verifica se há erro
          if (snapshot.hasError) print(snapshot.error);

          // Mostra tela de carregamento até o fim do processamento dos dados
          return snapshot.hasData
              ? DataList(jsonData: snapshot.data)
              : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

