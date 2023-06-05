import 'package:flutter/material.dart';

class IconsButton extends StatelessWidget {
  const IconsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.help_outline_outlined,
          size: 50,
          color: Colors.white,
        ));
  }
}
