import 'dart:async';

import 'package:flutter/material.dart';




class WidgetsStreamBuilder extends StatelessWidget {

  /// Método da classe que sera usado como a Stream, que é literalmente
  /// uma corrente de dados
  /// Este método cria os dados em Stream com intervalos e é interrompido
  /// ao chegar à contagem máxima
  Stream<int> timedCounter(Duration interval, [int maxCount]) async* {
    int i = 0;
    while (true) {
      await Future.delayed(interval);
      yield i++;
      if (i == maxCount) break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("StreamBuilder in Flutter")),
      body: Center(
        child: StreamBuilder<int>(
          /// StreamBuilder deve receber uma stream, no caso o método que retorna
          /// ints a cada intervalo de tempo
          stream: timedCounter(Duration(seconds: 2), 10),
          /// print em um inteiro a cada 2secs, 10 vezes
          builder: (context, snapshot) {
            /// Verifica se há dados recebidos
            if (!snapshot.hasData) {
              return Text("No data");
            }
            return Text("${snapshot.data.toString()}",
                style: TextStyle(fontSize: 70));
          },
        ),
      ),
    );
  }
}
