import 'package:drawer/components/info_card.dart';
import 'package:drawer/components/rive_assets.dart';
import 'package:drawer/components/side_menu_tile.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          width: 288,
          height: double.infinity,
          color: const Color(0xff17203a),
          child: Column(
            children: [
              const InfoCard(nombre: "Usuario", role: "Centinela"),
              ...sideMenus.map((e) => const SideMenuTile()),
            ],
          )),
    ));
  }
}
