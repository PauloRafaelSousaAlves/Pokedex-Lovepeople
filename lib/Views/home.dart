import 'package:flutter/material.dart';
import 'package:pokedex_gerencia/Presenter/home_presenter.dart';
import 'package:provider/provider.dart';
import 'itemPokemon.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void didChangeDependencies() {
    context.read<HomePresenter>().obter();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Row(
          children: <Widget>[
            Container(
                padding: const EdgeInsets.only(right: 200),
                child: const Text('Pokedex')),
            Image.network(
              'https://raw.githubusercontent.com/RafaelBarbosatec/SimplePokedex/master/assets/pokebola_img.png',
              height: 30,
            ),
          ],
        )),
        body: Consumer<HomePresenter>(
          builder: (context, value, child) {
            if (value.listaPokemons.isEmpty) {
              return const Center(child: CircularProgressIndicator());
            }
            return ListView.builder(
                padding: const EdgeInsets.all(20),
                itemCount: value.listaPokemons.length,
                itemBuilder: (context, index) {
                  return ItemPokemon(
                    item: value.listaPokemons[index],
                  );
                });
          },
        ));
  }
}
