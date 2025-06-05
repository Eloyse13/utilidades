import 'package:flutter/material.dart';
import 'package:utilizades/src/models/menu_model.dart';
import 'package:utilizades/src/view/about_view.dart';
import 'package:utilizades/src/view/home_view.dart';

final List<MenuModel> appMenuItems = [
  MenuModel(
    title: "Home", 
    icon: Icons.home, 
    route: "/home",
    page: const HomeView()
    ),
    MenuModel(title: "Sobre mim", 
    icon: Icons.person_sharp, 
    route: "/about", 
    page: AboutView()
    ),
];