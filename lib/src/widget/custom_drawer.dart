import 'package:flutter/material.dart';
import 'package:utilizades/services/auth_service.dart';
import 'package:utilizades/src/app/app_menu.dart';
import 'package:utilizades/src/view/login_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding:  EdgeInsets.zero,
        children: [
          Container(
            color: Colors.greenAccent,
            height:  150,
            alignment: Alignment.center,
            child: Padding(
              padding:  EdgeInsets.only(top:50),
              child: Center(
                child: Image.asset("assset/imagens/logo.png", width: 150,),
              ),
            )
          ),
          ...appMenuItems.map(
            (item) => ListTile(
              leading: Icon(item.icon),
              title: Text(item.titule),
              onTap: (){
              Navigator.pushReplacementNamed(context, item.route);
              },
            )
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout),
            title:  Text("Sair"),
            onTap: (){
              AuthService.logout();
              Navigator.pushAndRemoveUntil(
                context, 
                MaterialPageRoute(builder: (_) => const LoginView()),
                (route) => false
              );
            },
          )
        ],
      ),
    );
  }
}