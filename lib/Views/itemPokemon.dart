import 'package:flutter/material.dart';
import '../Model/pokemon.dart';
import 'descricaoPokemon.dart';

class ItemPokemon extends StatelessWidget {
  final Pokemon item;

  const ItemPokemon({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DescricaoPokemon(detalhe: item)));
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.network(item.thumbnailImage ?? '', width: 70, height: 70),
            Flexible(
              fit: FlexFit.tight,
              flex: 3,
              child: Text(item.name ?? ''),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                '#${(item.number ?? '')}',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
