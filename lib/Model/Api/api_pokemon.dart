import 'dart:convert';

import '../pokemon.dart';
import 'package:http/http.dart' as http;

class ApiPokemon {
  Future<List<Pokemon>> obterPokemon() async {
    var url = Uri.parse('http://104.131.18.84/pokemon/?limit=50&page=0');
    final resposta = await http.get(url);
    if (resposta.statusCode == 200) {
      Map json = const JsonDecoder().convert(resposta.body);

      return json['data'].map<Pokemon>((value) {
        return Pokemon.fromJson(value);
      }).toList();
    }
    return [];
  }
}
