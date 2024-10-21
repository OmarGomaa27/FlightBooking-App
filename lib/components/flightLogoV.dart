import 'package:flutter/material.dart';
import 'dart:math' as math;

class FlightLogoV extends StatelessWidget {
  String? text;
  IconData? flightIcon;
  double? fontSize, imageSize;
  bool iscenter=false;

  FlightLogoV({
    Key? key,
    required this.text,
    required this.flightIcon,
    required this.fontSize,
    required this.imageSize,
    required this.iscenter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isCent=iscenter!;
    String Email="ss";
    if(iscenter){
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Transform.rotate(
            angle: 45 * math.pi / 180,
            child: Icon(
              flightIcon!,
              color: Colors.red,
              size: MediaQuery.of(context).size.width * imageSize!,
              shadows: [Shadow(color: Colors.black45, offset: Offset(1, 8))],
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
    else {
      return Column(

        children: [
          Transform.rotate(
            angle: 45 * math.pi / 180,
            child: Icon(
              flightIcon!,
              color: Colors.red,
              size: MediaQuery
                  .of(context)
                  .size
                  .width * imageSize!,
              shadows: [Shadow(color: Colors.black45, offset: Offset(1, 8))],
            ),
          ),
          Text(
            "$text",
            style: TextStyle(
                fontSize: MediaQuery
                    .of(context)
                    .size
                    .width * fontSize!,
                color: Colors.white,
                fontWeight: FontWeight.w400),
          ),
        ],
      );
    }
  }
}
