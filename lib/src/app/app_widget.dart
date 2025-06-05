import 'package:flutter/material.dart';
import 'package:utilizades/src/app/app_routes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "utilidades",
      initialRoute:  "/home",
      routes: gerrateRoutes(),
    );
  }
}