import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

// Carrega o conteudo da API
Future<List<JsonData>> fetchPhotos() async {
  final client = http.Client();

  // Criando uma instancia de Response, que contem os dados do servidor
  final response =
      await client.get('https://jsonplaceholder.typicode.com/posts');

  // Usa a função compute para executar parsePhotos em uma isolate separada.
  return compute(parsePhotos, response.body);
}

// Converte o conteúdo de response.body de json para List<JsonData>.
List<JsonData> parsePhotos(String responseBody) {
  // Re-tipa o responseBody de json para Map
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

  // Coloca uma função anonima na variavel
  final funcaoAnonima = (json) => JsonData.fromJsonx(json);

  // Insere função anonima na função map
  final parsedMap = parsed.map<JsonData>(funcaoAnonima);

  // Retornando uma lista de Maps
  return parsedMap.toList();
}

class JsonData {
  final int userId;
  final int id;
  final String title;
  final String body;

  // Construtor da classe
  JsonData({this.userId, this.id, this.title, this.body});

  // Função que recebe Maps de uma lista
  factory JsonData.fromJsonx(Map<String, dynamic> json) {
    // Recebe item por item da lista
    return JsonData(
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
    );
  }
}
