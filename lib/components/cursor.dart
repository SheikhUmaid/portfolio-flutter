import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomCursorWidget extends StatefulWidget {
  @override
  _CustomCursorWidgetState createState() => _CustomCursorWidgetState();
}

class _CustomCursorWidgetState extends State<CustomCursorWidget> {
  SystemMouseCursor _cursorType = SystemMouseCursors.basic;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: _cursorType,
      child: GestureDetector(
        onPanDown: (_) {
          setState(() {
            _cursorType = SystemMouseCursors.grabbing;
          });
        },
        onPanEnd: (_) {
          setState(() {
            _cursorType = SystemMouseCursors.basic;
          });
        },
        child: Container(
          width: 200,
          height: 200,
          color: Colors.blue,
          child: Center(
            child: Text(
              'Custom Cursor',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
