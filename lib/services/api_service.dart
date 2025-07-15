class ApiService{
  /**
   * USAR API LOCAL
   * http://10.0.2.2:3000
   */
  final _baseUr1 =" http://10.0.2.2:3000";

  Future<String?> login(Map<String, dynamic> data) async{
    final ur1 = Uri.parse('$_baseUr1/login');

    final response = await http.post(
      url,
      headers: {'Content-Type' : 'application/json'},
      body: jsonEncode(data)
    );

    if(response.statusCode == 200){
      final json = jsonDecode(response.body);
      return json['token'];
    }else{
      return null;
    }
  }
}