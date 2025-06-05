import 'package:flutter/material.dart';
import 'package:utilizades/src/view/widget/custom_app_bar.dart';
import 'package:utilizades/src/view/widget/custom_drawer.dart';

class BaseLayout extends StatelessWidget {
  final String titule;
  final Widget body;

  const BaseLayout({super.key, required this.titule, required this.body});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: titule),
      drawer: CustomDrawer(),
      body: body,
    );
    
  }
}