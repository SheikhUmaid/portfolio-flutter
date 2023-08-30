import 'package:flutter/material.dart';
import 'package:portfolio/v1/components/banner.dart';
import 'package:portfolio/v1/components/banner_2.dart';
import 'package:portfolio/v1/components/button.dart';
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
  double _height = double.infinity;
  double _width = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
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
            margin: const EdgeInsets.all(30),
            child: Stack(
              children: [
                IconButton(
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
                      _toggleContainerSize();
                    });
                  },
                ),
              ],
            ),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            height: _height,
            width: _width,
            curve: Curves.easeIn,
            decoration: BoxDecoration(
              color: isDark ? Colors.white : Colors.black,
              boxShadow: [
                BoxShadow(
                  color: isDark
                      ? Colors.grey.withOpacity(0.5)
                      : Colors.black.withOpacity(0.5), // Shadow color
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(0, 3), // changes position of shadow
                ),
                BoxShadow(
                  color: isDark
                      ? Colors.grey.withOpacity(0.5)
                      : Colors.black.withOpacity(0.5), // Shadow color
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(0, 3), // changes position of shadow
                ),
                BoxShadow(
                  color: isDark
                      ? Colors.grey.withOpacity(0.5)
                      : Colors.black.withOpacity(0.5), // Shadow color
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
          ),
          // MouseRegion(),
        ],
      ),
    );
  }

  Future<void> _toggleContainerSize() async {
    setState(() {
      // Max height
      _width = MediaQuery.of(context).size.width; // Max width
    });

    await Future.delayed(Duration(milliseconds: 750));
    isDark = !isDark;

    setState(() {
      _width = 0;
    });
  }
}
