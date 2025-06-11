import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BuscaComStream extends StatefulWidget {
  const BuscaComStream({super.key});

  @override
  State<BuscaComStream> createState() => _BuscaComStreamState();
}

class _BuscaComStreamState extends State<BuscaComStream> {
  final _controllerBusca = StreamController();
  final List<String> _items = [
    "maça",
    "Banana",
    "Melancia",
    "Tangerina",
    "Manga",
    "Abacaxi",
    "Romã",
    "Limão",
    "Poncã",
    "Uva",
    "Laranja"
  ];

  List<String> _filtrar(String termo){
    return _items.where(
      (item) => item.toLowerCase().contains(termo.toLowerCase())
      ).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Buscar produtos (stream)")),
      padding:EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Busca fruta'),
            onChanged: (texto){
              _controllerBusca.add(texto);
            },
          ),
          SizedBox(height: 20,),
          StreamBuilder<dynamic>(
            stream: _controllerBusca.stream,
            builder: (context, snapshot){
              final listaFiltrada = _filtrar(snapshot.data ?? '');
              return Expanded(
                child: ListView.builder(
                  itemCount: listaFiltrada.length,
                  itemBuilder: (context, index){
                    return ListTile(
                      title: Text(listaFiltrada[index]),
                    );
                  },
                  ),
              );
            }
          )
        ],
      )

    );
  }
}