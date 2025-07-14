import 'package:flutter/material.dart';
import 'package:utilizades/services/auth_service.dart';
import 'package:utilizades/src/controlles/login_controller.dart';
import 'package:utilizades/src/models/user_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _controller = LoginController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  String _massage = '';
  bool _isLoading = false;

 /*  void _hadileLogin() async{
    final sucess = await _controller.login(
      _usernameController.text,
      _passwordController.text
    );

    if(sucess){
      AuthService.login();
      Navigator.pushReplacementNamed(context, "/home");
    }else{
      setState(() {
        _massage = "Usuário ou senha incorretos";
      });
    }
  } */
 void -handlelogin() async{
  setState(() {
    _isLoding = true;
  });

  final user = UserModel(
    username: _usernameController.text.trim(),
   password: _passwordController.text.trim()
   );

   final success = await _controller.login(user);

   setState((){
    _isLoding = false;
   });

   if(success){
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Login efetuando com sucesso"))
    );

    Navigator.pushReplacementNamed(context, '/home');
   }else{
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Dados de login incorretos"))
    );
   }

 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login"),),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Image.asset("assset/imagens/logo.png", width: 200,),
              ),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: "Usuário",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18)
                )
              ),
            ),
            SizedBox(height: 10,),
            _isLoading ?
            const CircularProgressIndicator() :
              
            ElevatedButton(
              onPressed: _hadleLogin, 
              child: Text("entrar"),
             ),
             SizedBox(height: 10,),
             ElevatedButton(
              onPressed: _hadleLogin, 
              child: Text("entrar")
              ),
              SizedBox(height: 10,),
              Text(_massage,style: TextStyle(color: Colors.lime),)
          ],
        ),
      ),
    );
  }
}
  
