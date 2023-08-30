import 'package:flutter/material.dart';
import 'package:portfolio/v1/components/banner.dart';
import 'package:portfolio/v1/components/banner_2.dart';
import 'package:portfolio/v1/components/button.dart';
import 'package:portfolio/v1/components/cursor.dart';
import 'package:portfolio/v1/components/dot_printer.dart';
import 'package:portfolio/v1/components/glassmorphic_circle.dart';
import 'package:portfolio/v1/components/icon_button.dart';
import 'package:portfolio/v1/components/role.dart';
import 'package:portfolio/v1/utlis/colors.dart';

import '../utlis/media_query.dart';

class MyIndexScreen extends StatefulWidget {
  const MyIndexScreen({super.key});

  @override
  State<MyIndexScreen> createState() => _MyIndexScreenState();
}

class _MyIndexScreenState extends State<MyIndexScreen> {
  bool isDark = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          CustomCursorWidget(),
          DottedContainer(
            bg: isDark ? ThemeColors().darkBg : ThemeColors().lightBg,
            dotsColor:
                isDark ? ThemeColors().whiteDots : ThemeColors().blackDots,
          ),
          Center(
            child: GlassMorphicCircle(
              stroke:
                  isDark ? ThemeColors().lightStroke : ThemeColors().darkStroke,
              outerShadow: !isDark
                  ? ThemeColors().lightOuterShadow
                  : ThemeColors().darkOuterShadow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'SheikhUmaid.',
                        style: TextStyle(
                          color: isDark
                              ? ThemeColors().darkFg
                              : ThemeColors().lightFg,
                          fontSize: MEDQ.wSizer(context, 1340)
                              ? MediaQuery.of(context).size.width * 0.1
                              : MediaQuery.of(context).size.width * 0.07,
                          height: MediaQuery.of(context).size.height * 0.0009,
                        ),
                      ),
                      const Role(),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  ComponentBanner(
                    fg: isDark ? ThemeColors().darkFg : ThemeColors().lightFg,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  BannerTwo(
                    fg: isDark ? ThemeColors().darkFg : ThemeColors().lightFg,
                  ),
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
          ),
          Container(
            margin: EdgeInsets.all(30),
            child: IconButton(
              icon: isDark
                  ? const Icon(
                      Icons.nights_stay,
                      color: Colors.white,
                    )
                  : const Icon(
                      Icons.wb_sunny,
                      color: Colors.black,
                    ),
              onPressed: () {
                setState(() {
                  isDark = !isDark;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
