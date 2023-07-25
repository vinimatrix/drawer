import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.nombre,
    required this.role,
  });
  final String nombre;
  final String role;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Colors.white24,
        child: Icon(Icons.person),
      ),
      title: Text(
        nombre,
        style: const TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        role,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
