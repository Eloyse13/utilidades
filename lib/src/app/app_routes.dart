import 'package:flutter/material.dart';
import 'package:utilizades/src/app/app_menu.dart';
import 'package:utilizades/src/view/base_layout.dart';

Map<String, WidgetBuilder> gerrateRoutes(){
  final Map<String, WidgetBuilder> routes = {};

  for(var item in appMenuItems){
    routes[item.route] =
    (context) => BaseLayout(titule: item.titule,body: item.page,);
  }

  return routes;
}