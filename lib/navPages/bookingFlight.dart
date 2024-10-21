import 'package:flightbooking_12thproject/screens/book.dart';
import 'package:flutter/material.dart';
import 'package:flightbooking_12thproject/components/flightLogoH.dart';
import 'package:flightbooking_12thproject/components/flightLogoV.dart';


class BookingFlight extends StatelessWidget {
  const BookingFlight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Color(0xff4A4E69),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: FlightLogoH(
            text: "MyFlight ",
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
      body: SingleChildScrollView(
        child:Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment(-0.8, -0.5),
              child: Text(
                "Trips",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 37,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Form(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.location_on),
                      fillColor: Colors.red,
                      hintText: "Flying From",
                      hintStyle:
                          TextStyle(fontSize: 24, color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(34),
                          borderSide: BorderSide(
                            color: Colors.white.withOpacity(0.6),
                            width: 3,
                          )),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 3),
                        borderRadius: BorderRadius.circular(34.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.location_on),
                      fillColor: Colors.red,
                      hintText: "Flying To",
                      hintStyle:
                          TextStyle(fontSize: 24, color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(34),
                          borderSide: BorderSide(
                            color: Colors.white.withOpacity(0.6),
                            width: 3,
                          )),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 3),
                        borderRadius: BorderRadius.circular(34.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.calendar_month),
                      fillColor: Colors.red,
                      hintText: "Date",
                      hintStyle:
                          TextStyle(fontSize: 24, color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(34),
                          borderSide: BorderSide(
                            color: Colors.white.withOpacity(0.6),
                            width: 3,
                          )),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 3),
                        borderRadius: BorderRadius.circular(34.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.chair),
                      fillColor: Colors.red,
                      hintText: "Class",
                      hintStyle:
                          TextStyle(fontSize: 24, color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(34),
                          borderSide: BorderSide(
                            color: Colors.white.withOpacity(0.6),
                            width: 3,
                          )),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 3),
                        borderRadius: BorderRadius.circular(34.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle_outlined),
                      fillColor: Colors.red,
                      hintText: "Number of People",
                      hintStyle:
                          TextStyle(fontSize: 24, color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(34),
                          borderSide: BorderSide(
                            color: Colors.white.withOpacity(0.6),
                            width: 3,
                          )),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 3),
                        borderRadius: BorderRadius.circular(34.0),
                      ),
                    ),
                  ),
                ],
              )),
            ),
            Align(
              alignment: FractionalOffset.bottomCenter,
              child: SizedBox(
                  height: 40,
                  width: 100,
                  child: ElevatedButton(onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PaymentPage()),
                    );
                  },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35))),child: Center(child: Text("Book Now!")))),
            ),
          ],
        ),
      ),
    );
  }
}
