import 'package:flutter/foundation.dart';
import 'package:pokedex_gerencia/Model/Api/api_pokemon.dart';
import 'package:pokedex_gerencia/Model/pokemon.dart';

class HomePresenter extends ChangeNotifier {
  final api = ApiPokemon();

  List<Pokemon> listaPokemons = [];

  Future<void> obter() async {
    listaPokemons = await api.obterPokemon();

    notifyListeners();
  }
}
