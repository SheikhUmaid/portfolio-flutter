import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:portfolio/utlis/media_query.dart';

class ComponentBanner extends StatelessWidget {
  const ComponentBanner({super.key, this.fg = Colors.white});
  final Color fg;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: MEDQ.wSizer(context, 1340)
          ? MediaQuery.of(context).size.width * 0.6
          : MediaQuery.of(context).size.width * 0.4,
      height: 70,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Marquee(
          text:
              'Web    💻    Developer    </>    Flutter    |    Android    📱    Dart    </>    IOS    🍎    Python    </>    ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: fg,
            fontSize: 25,
          ),
          scrollAxis: Axis.horizontal,
          crossAxisAlignment: CrossAxisAlignment.center,
          blankSpace: 20.0,
          velocity: 100.0,
          pauseAfterRound: const Duration(seconds: 1),
          startPadding: 10.0,
          accelerationDuration: const Duration(seconds: 1),
          accelerationCurve: Curves.linear,
          decelerationDuration: const Duration(milliseconds: 500),
          decelerationCurve: Curves.easeOut,
        ),
      ),
    );
  }
}
