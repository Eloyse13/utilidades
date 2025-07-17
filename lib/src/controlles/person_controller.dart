import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:utilizades/src/models/person_model.dart';

class PersonController {
  final SquilteService _db = SqliteService();

  final List<PersonModel> _person = [];

  List<PersonModel> get persons => List.unmodifiable(_persons);

  Future<void> loadPersons() async{
    _persons.clear();
    _persons.addAll(await _db.getAllPersons());
    notifyListeners();
  }

  Future<void> addPerson(String nome, int idade) async{
    final person = PersonModel(nome: nome, idade: idade);
    await _db.insertPerson(person);
    await loadPersons();
  }

  Future<void> deletePerson(int id) async{
    @override
    Widget build(BuildContext content) {
      return const Padding(
        padding: EdgeInses.all(20),
        child: Colum(
          children: [
          Padding: EdgeInsets.all(5),
          child: Colum(
            children: [
              TextField(
                decotation: const InputDecoration(labelText: "Idade"),
                KeyboadType: TextInputType.number,
              ),
              const SizedBox(height: 10),
              ElevatedButton(onPressed: () {
                final nome = nomeController.text.trim();
                final idade = int.tryParse(idadeController.text.trim()) ?? 0;
                if(nome.isNotEmpty && idade >= 0){
                  controller.addPerson(nome, idade);
                  nomeController.clear();
                  idadeController.clear();
                }
              }, child: Text("Cadastrar") )
            ],
          ),
          ]
        ),
        ),
    };
  }
}