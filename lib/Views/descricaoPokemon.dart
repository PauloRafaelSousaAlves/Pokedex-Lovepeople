import 'package:flutter/material.dart';
import '../Model/pokemon.dart';

class DescricaoPokemon extends StatelessWidget {
  final Pokemon detalhe;
  const DescricaoPokemon({Key? key, required this.detalhe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(detalhe.name ?? ''),
      ),
      body: Card(
        color: Colors.white,
        margin:
            const EdgeInsets.only(bottom: 100, top: 20, right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text('#${(detalhe.number ?? '')}'),
                    ),
                  ),
                  Image.network(
                    detalhe.thumbnailImage ?? '',
                    width: 300,
                    height: 200,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Text(
                detalhe.description ?? '',
                style: const TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            const Divider(
              indent: 30,
              endIndent: 30,
              thickness: 1,
              color: Colors.grey,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  margin: const EdgeInsets.all(5),
                  child: const Text(
                    'Type:',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  margin: const EdgeInsets.all(5),
                  child: Text(
                    '${(detalhe.type ?? '')}',
                    style: const TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ),
                const Divider(
                  indent: 30,
                  endIndent: 30,
                  thickness: 1,
                  color: Colors.grey,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      margin: const EdgeInsets.all(5),
                      child: const Text(
                        'Weakness:',
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      margin: const EdgeInsets.all(5),
                      child: Text(
                        '${(detalhe.weakness ?? '')}',
                        style: const TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
