import 'dart:ffi';
import 'dart:math';

import 'package:drawer/components/configuracion.dart';
import 'package:drawer/components/menu_btn.dart';
import 'package:drawer/components/pagina_2.dart';
import 'package:drawer/components/side_menu.dart';
import 'package:drawer/main.dart';
import 'package:flutter/material.dart';

class EntryPoint2 extends StatefulWidget {
  const EntryPoint2({super.key});

  @override
  State<EntryPoint2> createState() => _EntryPoint2State();
}

class _EntryPoint2State extends State<EntryPoint2>
    with SingleTickerProviderStateMixin {
  late bool isMenuOpen;
  late AnimationController animationController;
  late Animation<double> animation;
  late Animation<double> scaleAnimation;
  final String pageName = "Actas";
  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200))
      ..addListener(() => setState(() {}));

    animation = Tween<double>(begin: 0.0, end: 1).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));
    scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));
    super.initState();
    isMenuOpen = false;
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Configuracion.fondo,
      body: Stack(
        children: [
          AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              curve: Curves.fastOutSlowIn,
              width: 288,
              left: isMenuOpen ? 0 : -288,
              height: MediaQuery.of(context).size.height,
              child: SideMenu(
                pageName: pageName,
              )),
          Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(animation.value - 30 * animation.value * pi / 180),
            child: Transform.translate(
                offset: Offset(animation.value * 288, 0),
                child: Transform.scale(
                    scale: scaleAnimation.value,
                    child: const ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                        child: Pagina2()))),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            curve: Curves.fastOutSlowIn,
            left: isMenuOpen ? 220 : 0,
            child: MenuBtn(
              icon: isMenuOpen ? Icons.close : Icons.menu,
              press: () {
                if (isMenuOpen) {
                  animationController.reverse();
                } else {
                  animationController.forward();
                }
                setState(() {
                  isMenuOpen = !isMenuOpen;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
