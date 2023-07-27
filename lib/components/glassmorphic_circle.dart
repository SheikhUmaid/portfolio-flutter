import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/utlis/media_query.dart';

class GlassMorphicCircle extends StatelessWidget {
  const GlassMorphicCircle(
      {super.key,
      required this.child,
      required this.stroke,
      required this.outerShadow});
  final Widget child;
  final Color stroke;
  final Color outerShadow;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MEDQ.wSizer(context, 1340)
          ? MediaQuery.of(context).size.width * 0.7
          : MediaQuery.of(context).size.width * 0.5,
      height: MEDQ.wSizer(context, 1340)
          ? MediaQuery.of(context).size.height * 0.8
          : MediaQuery.of(context).size.width * 0.5,
      decoration: BoxDecoration(
        border: Border.all(
          color: stroke, //stroke
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(!MEDQ.wSizer(context, 1340)
            ? MediaQuery.of(context).size.width
            : MediaQuery.of(context).size.width * 0.1),
        color: Colors.white.withOpacity(0),
        boxShadow: [
          BoxShadow(
            color: outerShadow, //outerShadow
            blurRadius: 12,
            spreadRadius: 4,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(!MEDQ.wSizer(context, 1340)
            ? MediaQuery.of(context).size.width
            : MediaQuery.of(context).size.width * 0.1),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
          child: Container(
            color: Colors.white.withOpacity(0.0),
            child: child,
          ),
        ),
      ),
    );
  }
}
