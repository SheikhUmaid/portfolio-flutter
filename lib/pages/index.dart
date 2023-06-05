import 'package:flutter/material.dart';
import 'package:portfolio/components/banner.dart';
import 'package:portfolio/components/button.dart';
import 'package:portfolio/components/cursor.dart';
import 'package:portfolio/components/dot_printer.dart';
import 'package:portfolio/components/glassmorphic_circle.dart';
import 'package:portfolio/components/icon_button.dart';
import 'package:portfolio/components/role.dart';

class MyIndexScreen extends StatelessWidget {
  const MyIndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          CustomCursorWidget(),
          const DottedContainer(),
          Center(
            child: GlassMorphicCircle(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'SheikhUmaid.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width * 0.07,
                            height:
                                MediaQuery.of(context).size.height * 0.0007),
                      ),
                      Role(),
                    ],
                  ),
                  ComponentBanner(),
                  DownloadButton(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconsButton(),
                      IconsButton(),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
