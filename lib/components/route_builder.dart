import 'package:flutter/material.dart';

class RouteBuilder {
  static Route createRoute(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.fastOutSlowIn;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        Animation<double> scaleAnimation = Tween(begin: 0.5, end: 1.0).animate(
            CurvedAnimation(parent: animation, curve: Curves.fastOutSlowIn));
        return SlideTransition(
          position: animation.drive(tween),
          child: ScaleTransition(scale: scaleAnimation, child: child),
        );
      },
    );
  }
}
