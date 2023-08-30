import 'package:flutter/material.dart';
import 'package:portfolio/v1/utlis/media_query.dart';

class BannerTwo extends StatelessWidget {
  const BannerTwo({super.key, this.fg = Colors.white});
  final Color fg;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Building ',
            style: TextStyle(
                color: fg,
                fontSize: !MEDQ.wSizer(context, 1340)
                    ? MediaQuery.of(context).size.width * 0.020
                    : MediaQuery.of(context).size.width * 0.04,
                fontFamily: "Montserrat"),
          ),
          Text('Products ',
              style: TextStyle(
                color: Colors.blue,
                fontSize: !MEDQ.wSizer(context, 1340)
                    ? MediaQuery.of(context).size.width * 0.022
                    : MediaQuery.of(context).size.width * 0.05,
              )),
          Text('With Code',
              style: TextStyle(
                  color: fg,
                  fontSize: !MEDQ.wSizer(context, 1340)
                      ? MediaQuery.of(context).size.width * 0.020
                      : MediaQuery.of(context).size.width * 0.04,
                  fontFamily: "Montserrat")),
        ],
      ),
    );
  }
}
