import 'package:flightbooking_12thproject/components/flightLogoH.dart';
import 'package:flightbooking_12thproject/screens/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flightbooking_12thproject/screens/feedback.dart';
import 'package:flightbooking_12thproject/screens/loginPage.dart';
import 'package:flightbooking_12thproject/screens/aboutus.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4A4E69),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: FlightLogoH(
            text: "MyFlight",
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
      body: SizedBox.expand(
        child: Column(
          children: [
            SizedBox(height: 15,),
            Align(
              alignment: Alignment(-0.8, -0.5),
              child: Text(
                "Profile",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 37,
                ),
              ),
            ),
            SizedBox(height: 15,),
            Expanded(
              child: SizedBox(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 100),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzCb4DonWw5pT1-A3Su9HzG6TTN4nMOmj7tg&usqp=CAU'),
                  ),
                  SizedBox(height: 16.0),
                  Text('Omar Gomaa', style: TextStyle(fontSize: 35)),
                  SizedBox(height: 16.0),
                  Padding(

                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.height * 0.1,
                        vertical: MediaQuery.of(context).size.width*0.07
                    ),

                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=> AboutUsPage()),
                          );
                        },

                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35))),
                        child: const Text(
                          'About Us',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.height * 0.1,
                      vertical: MediaQuery.of(context).size.width*0.07
                    ),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=> FeedbackPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35))),
                        child: const Text(
                          'Leave Feedback',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35))),
                      child: const Text(
                        'Sign out',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
