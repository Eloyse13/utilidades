import 'package:flutter/widgets.dart';

class MenuModel {
  final String titule;
  final IconData icon;
  final String route;
  final Widget page;

  MenuModel({
    required this.titule,
    required this.icon,
    required this.route,
    required this.page,
  });
}