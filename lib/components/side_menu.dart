import 'package:drawer/components/configuracion.dart';
import 'package:drawer/components/info_card.dart';
import 'package:drawer/components/rive_assets.dart';
import 'package:drawer/components/side_menu_tile.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key, required this.pageName}) : super(key: key);
  final String pageName;
  @override
  // ignore: library_private_types_in_public_api
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  RiveAsset selected = sideMenus.first;
  @override
  void initState() {
    // TODO: implement initState
    selected =
        sideMenus.firstWhere((element) => element.title == widget.pageName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          width: 288,
          height: double.infinity,
          color: Configuracion.fondo,
          child: Column(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Color.fromARGB(255, 198, 195, 195)))),
                child: InfoCard(
                    nombre: "Juan Esteban de La cruz Rosario",
                    role: "Centinela"),
              ),
              ...sideMenus.map((e) => SideMenuTile(
                    menu: e,
                    // riveOnInit: (artboard) {},
                    press: () {
                      setState(() {
                        e.input = true;
                      });
                      Future.delayed(const Duration(seconds: 1), () {
                        setState(() {
                          e.input = false;
                          selected = e;
                        });
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => e.navClass));
                      });
                    },
                    isActive: selected == e,
                    icon: e.icon,
                  )),
            ],
          )),
    ));
  }
}
