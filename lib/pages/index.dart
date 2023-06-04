import 'package:flutter/material.dart';
import 'package:portfolio/components/dot_printer.dart';
import 'package:portfolio/components/glassmorphic_circle.dart';

class MyIndexScreen extends StatelessWidget {
  const MyIndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          const DottedContainer(),
          Center(
            child: Container(
              height: 60,
              width: 60,
              color: Colors.red,
            ),
          ),
          const Center(
            child: GlassMorphicCircle(),
          )
        ],
      ),
    );
  }
}
