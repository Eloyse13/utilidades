import 'package:flutter/material.dart';
import 'package:utilizades/services/auth_service.dart';
import 'package:utilizades/src/app/app_routes.dart';
import 'package:utilizades/src/view/login_view.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "utilidades",
      initialRoute: "/login",
      routes: {
        "/login": (context) => LoginView(),
        ...gerrateRoutes()
      },
    );
  }
}