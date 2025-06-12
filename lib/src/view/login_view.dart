import 'package:flutter/material.dart';
import 'package:utilizades/services/auth_service.dart';
import 'package:utilizades/src/controlles/login_controller.dart';

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

  void _hadileLogin() async{
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
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: "Senha",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18)
                )
              ),
              obscureText: true,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _hadileLogin, 
              child: Text("entrar"),
             ),
             SizedBox(height: 10,),
             ElevatedButton(
              onPressed: _hadileLogin, 
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
  
