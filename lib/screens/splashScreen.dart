import 'dart:async';

import 'package:flightbooking_12thproject/components/flightLogoV.dart';
import 'package:flightbooking_12thproject/routeList.dart';
import 'package:flightbooking_12thproject/screens/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:flightbooking_12thproject/prefabs/prefabs.dart';
import 'dart:math' as math;

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    if (isLogin)
      _navigateToHomeScreen();
    else
      _navigateToLoginScreen();
  }

  _navigateToHomeScreen() async {
    await Future.delayed(Duration(milliseconds: 3000));
    Navigator.pushReplacementNamed(context, RouteList.mainNavPage);
  }

  _navigateToLoginScreen() async {
    await Future.delayed(Duration(milliseconds: 3000));
    Navigator.pushReplacementNamed(context, RouteList.loginPage);
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Color(0xff4A4E69),
            child: Center(
                child: FlightLogoV(
              text: "MyFlight",
              flightIcon: Icons.flight,
              fontSize: 0.1,
              imageSize: 0.3,
              iscenter: true,
            ))),
      ),
    );
  }
}
