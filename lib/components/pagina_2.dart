import 'package:flutter/material.dart';

class Pagina2 extends StatefulWidget {
  const Pagina2({super.key});

  @override
  State<Pagina2> createState() => _Pagina2State();
}

class _Pagina2State extends State<Pagina2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Padding(
            padding: EdgeInsets.only(left: 60.0),
            child: Text("ACTAS"),
          )),
      body: const SafeArea(
          child: Center(
        child: Text('Actas'),
      )),
    );
  }
}
