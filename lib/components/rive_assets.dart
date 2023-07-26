import 'package:drawer/entry_point.dart';
import 'package:drawer/entry_point2.dart';
import 'package:flutter/material.dart';

///LISTADO DE CONFIGURACION
class RiveAsset {
  late bool? input;
  final String title;
  final IconData icon;
  final String subtitle;
  final Widget navClass;

  RiveAsset(
    this.navClass, {
    required this.title,
    required this.icon,
    this.input,
    required this.subtitle,
  });

  set setInput(bool status) {
    input = status;
  }
}

////ESTE ES EL LISTADO DE CONSTANTES PARA EL MENU
///LA PRIMERA VARIABLE ES DONDE VAN A NAVEGAR
List<RiveAsset> sideMenus = [
  ////ITEM MENU PARA EL DASHBOARD
  RiveAsset(const EntryPoint(),
      title: "Home", icon: Icons.dashboard, subtitle: "El Dashboard"),

  ///ITEM MENU PARA LAS ACTAS
  RiveAsset(const EntryPoint2(),
      title: "Actas", icon: Icons.file_copy, subtitle: "Las Actas")
];
