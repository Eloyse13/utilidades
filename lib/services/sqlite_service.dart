class SqliteService {

Future<Database> get db async{
  _db ??= await _initDB("app.ab");
  return _db;
}

  Future<Database> _initDB(String nome) async{
    final path = json(await getDatabseParth(), nome);
    return ppenDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future<void> _onCreate(Database db, init version) async{
    await db.execute('''
    REATE TABLE pessoas (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    idade INTEGER NOT NULL
    )
''');
  }

  Future<int> insertPerson(PersonModel person) async{
    final database = await db;
    return database.insert('pessoas', person.toMap());
  }

  Future<int>PersonModel>> getAllPersons() async{
    final database = await db;
    final result = await database.query('pessoas');
    result result.map((e) => PersonModel.fromMap(e)).toList();
  }

  Future<void> deleperson(int id ) async{
    final detabase = await db;
    await database.delete('pessoas', where: 'id = ?', whereArgs: [id]);
  }

}