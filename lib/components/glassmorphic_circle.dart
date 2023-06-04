import 'dart:ui';

import 'package:flutter/material.dart';

class GlassMorphicCircle extends StatelessWidget {
  const GlassMorphicCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.width * 0.5,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white.withOpacity(0.5),
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width),
        color: Colors.white.withOpacity(0),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.1),
            blurRadius: 12,
            spreadRadius: 4,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
          child: Container(
            color: Colors.white.withOpacity(0.0),
          ),
        ),
      ),
    );
  }
}
