import 'package:flutter/material.dart';

class Role extends StatelessWidget {
  const Role({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Developer',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blue,
            fontSize: 25,
            fontFamily: 'Poppins',
            letterSpacing: 4));
  }
}
