import 'package:flutter/material.dart';
import 'dart:math' as math;

class FlightLogoH extends StatelessWidget {
  String? text;
  IconData? flightIcon;
  double? fontSize, imageSize;
  FlightLogoH({
    Key? key,
    required this.text,
     this.flightIcon,
    required this.fontSize,
    required this.imageSize,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Transform.rotate(
            angle: 45 * math.pi / 180,
            child: Icon(
              flightIcon!,
              color: Colors.red,
              size: MediaQuery.of(context).size.width * imageSize!,
              shadows: [Shadow(color: Colors.black45, offset: Offset(1, 3))],
            ),
          ),
          Text(
            "$text",
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * fontSize!,
                color: Colors.white,
                fontWeight: FontWeight.w400),
          ),
        ],
      );

  }
}
