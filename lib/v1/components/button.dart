import 'package:flutter/material.dart';
import 'dart:html' as html;

class DownloadButton extends StatelessWidget {
  const DownloadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          html.AnchorElement(
              href:
                  'https://drive.google.com/file/d/1qP3HAjk6miSGGw_t1XiopEkUPcQIQKMG/view?usp=drive_link')
            ..setAttribute('download', 'Sheikh-Umaid-CV.pdf')
            ..setAttribute('target', "_blank")
            ..click();
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          minimumSize: Size(MediaQuery.of(context).size.width * 0.2,
              MediaQuery.of(context).size.height * .08),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
        ),
        child: const Text(
          'Download CV',
          style: TextStyle(fontSize: 20, fontFamily: 'SourceSansPro'),
        ),
      ),
    );
  }
}
