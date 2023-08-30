import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:portfolio/v1/utlis/media_query.dart';

class IconsButton extends StatelessWidget {
  const IconsButton({super.key, required this.icon, required this.link});
  final String icon;
  final String link;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        html.window.open(link, "new tab");
      },
      icon: Image.asset(
        icon,
        height: MEDQ.wSizer(context, 1340)
            ? MediaQuery.of(context).size.width * 0.14
            : MediaQuery.of(context).size.width * 0.05,
        width: MEDQ.wSizer(context, 1340)
            ? MediaQuery.of(context).size.width * 0.14
            : MediaQuery.of(context).size.width * 0.05,
      ),
    );
  }
}
