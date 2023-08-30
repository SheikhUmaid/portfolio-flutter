import 'package:flutter/material.dart';

class MEDQ {
  static bool wSizer(BuildContext context, double size) {
    return MediaQuery.of(context).size.width <= size;
  }

  static bool hSizer(BuildContext context, double size) {
    return MediaQuery.of(context).size.height <= size;
  }
}
