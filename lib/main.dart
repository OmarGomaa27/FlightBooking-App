import 'package:firebase_core/firebase_core.dart';
import 'package:flightbooking_12thproject/navPages/mainNav_pgae.dart';
import 'package:flightbooking_12thproject/routeList.dart';
import 'package:flightbooking_12thproject/navPages/bookingFlight.dart';
import 'package:flightbooking_12thproject/screens/loginPage.dart';
import 'package:flightbooking_12thproject/screens/resetPassword.dart';
import 'package:flightbooking_12thproject/screens/signUp.dart';
import 'package:flightbooking_12thproject/screens/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';


import 'navPages/homePage.dart';
import 'navPages/profile.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();//singletone design pattern
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        RouteList.loginPage: (context) => LoginPage(),
        RouteList.signUp: (context) => SignUp(),
        RouteList.homePage: (context) => HomePage(),
        RouteList.bookingPage: (context) => BookingFlight(),
        RouteList.profilePage: (context) => Profile(),
        RouteList.resetPassword: (context) => ResetPassword(),
        RouteList.mainNavPage: (context) => MainNavPage(),
        // RouteList.FeedbackPage: (context) => FeedbackPage(),
      },
    );
  }
}
