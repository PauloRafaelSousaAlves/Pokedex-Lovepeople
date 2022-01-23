import 'package:pokedex_gerencia/Model/Api/api_pokemon.dart';
import 'package:pokedex_gerencia/Model/pokemon.dart';

class PokemonPresenter {
  final api = ApiPokemon();

  Future<List<Pokemon>> obter() async {
    return await api.obterPokemon();
  }
}
