import 'package:drawer/components/configuracion.dart';
import 'package:drawer/components/rive_assets.dart';
import 'package:flutter/material.dart';

class SideMenuTile extends StatelessWidget {
  const SideMenuTile(
      {super.key,
      required this.menu,
      required this.press,
      //required this.riveOnInit,
      required this.isActive,
      required this.icon});
  final RiveAsset menu;
  final VoidCallback press;
  final IconData icon;
  //final ValueChanged<Artboard> riveOnInit;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListTile(
        onTap: press,
        leading: SizedBox(
            height: 34,
            width: 34,
            child: AnimatedSize(
              duration: const Duration(microseconds: 300),
              curve: Curves.fastOutSlowIn,
              child: Icon(
                icon,
                color: isActive
                    ? Configuracion.colorIconoActivo
                    : Configuracion.colorIconoInactivo,
                size: isActive ? 38 : 36,
              ),
            )),
        title: AnimatedSize(
          duration: const Duration(microseconds: 300),
          curve: Curves.fastOutSlowIn,
          child: Text(
            menu.title,
            style: TextStyle(
                color: Configuracion.colorIconoInactivo,
                fontSize: isActive ? 20 : 18),
          ),
        ),
        subtitle: Text(
          menu.subtitle,
          style: TextStyle(color: Configuracion.colorIconoInactivo),
        ),
      )
    ]);
  }
}
