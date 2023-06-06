import 'package:flutter/material.dart';
import 'package:portfolio/components/banner.dart';
import 'package:portfolio/components/banner_2.dart';
import 'package:portfolio/components/button.dart';
import 'package:portfolio/components/cursor.dart';
import 'package:portfolio/components/dot_printer.dart';
import 'package:portfolio/components/glassmorphic_circle.dart';
import 'package:portfolio/components/icon_button.dart';
import 'package:portfolio/components/role.dart';

import '../utlis/media_query.dart';

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
                          fontSize: MEDQ.wSizer(context, 1340)
                              ? MediaQuery.of(context).size.width * 0.1
                              : MediaQuery.of(context).size.width * 0.07,
                          height: MediaQuery.of(context).size.height * 0.0009,
                        ),
                      ),
                      Role(),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  const ComponentBanner(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  const BannerTwo(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  const DownloadButton(),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconsButton(
                        icon: 'assets/icons/github.png',
                        link: 'https://github.com/SheikhUmaid/',
                      ),
                      IconsButton(
                          icon: 'assets/icons/linkedin.png',
                          link:
                              'https://www.linkedin.com/in/sheikh-umaid-795a101b6/'),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
