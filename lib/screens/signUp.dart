import 'package:flightbooking_12thproject/components/flightLogoH.dart';
import 'package:flightbooking_12thproject/components/flightLogoV.dart';
import 'package:flutter/material.dart';

import '../routeList.dart';

enum ButtonState { init, loading, done }

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4A4E69),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: FlightLogoH(
            text: "Flight Booking",
            flightIcon: Icons.flight,
            fontSize: 0.05,
            imageSize: 0.1),
        backgroundColor: Color(0xff5560AB),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50),
              bottomLeft: Radius.circular(50)),
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment(-0.5, -0.5),
                child: Text("Create an Account",style: TextStyle(
              color: Colors.white,
              fontSize: 37,
                ),),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [ Form(
                    child: Column(
                      children: [
                        Padding(
                          padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 26),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            // height: 95,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "First Name",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xff9796A1),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 40,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      fillColor: Color(0xffD9D9D9),
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
                          EdgeInsets.symmetric(vertical: 10, horizontal: 26),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            // height: 95,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Last Name",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xff9796A1),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 40,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      fillColor: Color(0xffD9D9D9),
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
                          EdgeInsets.symmetric(vertical: 10, horizontal: 26),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            // height: 95,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Email",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xff9796A1),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 40,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      fillColor: Color(0xffD9D9D9),
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
                          EdgeInsets.symmetric(vertical: 10, horizontal: 26),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Password",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xff9796A1),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 40,
                                  child: TextFormField(
                                    obscureText: true,
                                    obscuringCharacter: "*",
                                    decoration: InputDecoration(
                                      floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xffFE724C),
                                          ),
                                          borderRadius: BorderRadius.circular(20)),
                                      fillColor: Color(0xffD9D9D9),
                                      filled: true,
                                      suffixIcon: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.remove_red_eye,
                                            color: Colors.black45),
                                      ),
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
                          EdgeInsets.symmetric(vertical: 0, horizontal: 26),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Confirm Password",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xff9796A1),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 40,
                                  child: TextFormField(
                                    obscureText: true,
                                    obscuringCharacter: "*",
                                    decoration: InputDecoration(
                                      floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xffFE724C),
                                          ),
                                          borderRadius: BorderRadius.circular(20)),
                                      fillColor: Color(0xffD9D9D9),
                                      filled: true,
                                      suffixIcon: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.remove_red_eye,
                                            color: Colors.black45),
                                      ),
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


                      ],
                    )),],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height*0.08,
        width: MediaQuery.of(context).size.width,

        child: ElevatedButton(
          onPressed: (){
            Navigator.of(context).pushNamed(RouteList.loginPage);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(100),
                topLeft: Radius.circular(100),
              )
            )
          ),
          child: Center(
            child: Text("Sign Up",
            textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),

    );
  }
}
