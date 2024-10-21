import 'package:flightbooking_12thproject/components/flightLogoV.dart';
import 'package:flightbooking_12thproject/routeList.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4A4E69),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                // icon and text showed in splash and login screen ,
                // change it values and also position
                Expanded(
                  flex: 2,
                  child: FlightLogoV(
                      text: "MyFlight",
                      flightIcon: Icons.flight,
                      fontSize: 0.1,
                      imageSize: 0.3,
                      iscenter: false),
                ),
                Expanded(
                  flex: 5,
                  child: Form(
                      child: Column(
                        children: [
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(vertical: 20, horizontal: 26),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              // height: 95,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Email",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Color(0xff9796A1),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 65,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        fillColor: const Color(0xffD9D9D9),
                                        filled: true,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(vertical: 29, horizontal: 26),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Password",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Color(0xff9796A1),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  TextFormField(
                                    obscuringCharacter: "*",
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0xffFE724C),
                                          ),
                                          borderRadius: BorderRadius.circular(20)),
                                      fillColor: const Color(0xffD9D9D9),
                                      filled: true,
                                      suffixIcon: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.remove_red_eye,
                                            color: Colors.black45),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          //Forget Password
                          Align(
                            alignment: const Alignment(0.7, 1),
                            // scale in x axis from -1 to 1 same in y axis
                            child: GestureDetector(
                              onTap: () =>
                                  Navigator.pushNamed(context, RouteList.resetPassword),
                              child: RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Forgot password?",
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          // Login Button
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed(RouteList.mainNavPage);
                              },
                              child: const Text("Login", style: TextStyle(fontSize: 20)),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                // to adjust size of button
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                    MediaQuery.of(context).size.width * 0.2,
                                    vertical:
                                    MediaQuery.of(context).size.height * 0.001),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)
                                ),
                              ),
                            ),
                          ),
                          // Create New Account
                          Align(
                            alignment: Alignment.bottomCenter,
                            // scale in x axis from -1 to 1 same in y axis
                            child: GestureDetector(
                              onTap: () =>
                                  Navigator.pushNamed(context, RouteList.signUp),
                              child: RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Create an account ",
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,

                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                      ),
                                    ),


                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class LoginPage extends StatelessWidget {
//   const LoginPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//   }
// }
