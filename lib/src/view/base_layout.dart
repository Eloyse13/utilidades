import 'package:flutter/material.dart';
import 'package:utilizades/src/view/widget/custom_app_bar.dart';
import 'package:utilizades/src/view/widget/custom_drawer.dart';

class BaseLayout extends StatefulWidget {
  final String titule;
  final Widget body;

  const BaseLayout({super.key, required this.titule, required this.body});

  @override
  State<BaseLayout> createState() => _BaseLayoutState();
}

class _BaseLayoutState extends State<BaseLayout> {
  /* @override
  void initState() {
    AuthService().checklogin(context);
    super.initState();

  } */
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: widget.titule),
      drawer: CustomAppDrawer(),
      body: widget.body,
    );
    
  }
}