import 'package:flutter/material.dart';
import 'package:utilizades/src/models/menu_model.dart';
import 'package:utilizades/src/view/about_view.dart';
import 'package:utilizades/src/view/bloc_example_view.dart';
import 'package:utilizades/src/view/converter_view.dart';
import 'package:utilizades/src/view/home_view.dart';
import 'package:utilizades/src/view/product_list_page.dart';

final List<MenuModel> appMenuItems = [
  MenuModel(
    title: "Home", 
    icon: Icons.home, 
    route: "/home",
    page: const HomeView()
    ),
    MenuModel(
    title: "Sobre mim", 
    icon: Icons.person_sharp, 
    route: "/about", 
    page: AboutView()
    ),
  MenuModel(
    title: "Conversor de medidas", 
    icon: Icons.design_services, 
    route: "/convertermedidas", 
    page: ConverterView()
    ),
    MenuModel(
    title: "Produtos", 
    icon: Icons.production_quantity_limits, 
    route: "/produtos", 
    page: ProductListPage()
    ),
    MenuModel(
      titule: "Pessoas (sqlite)",
       icon: Icons.people, 
       route: "/pessoas",
        page: PersonView(),
        ),
        MenuModel(
          title: "login river",
          icon: Icons.settings,
          route: "/loginriver",
          page:ProviderScope(child: RiverpodExample()),
          ),
          MenuModel(
          title: "Bloc",
          icon: Icons.settings_backup_restore,
          route: "/bloc",
          page:BlocExampleView(),
          ),
        ];