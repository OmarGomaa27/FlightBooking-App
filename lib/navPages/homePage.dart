import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flightbooking_12thproject/components/flightLogoH.dart';
import 'package:flightbooking_12thproject/navPages/bookingFlight.dart';
import 'package:flightbooking_12thproject/navPages/profile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //create singleTone object from class of firestore
  FirebaseFirestore firebase = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4A4E69),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
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
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment(-0.5, -0.5),
              child: Text(
                "Popular Locations",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 37,
                ),
              ),
            ),
            StreamBuilder<QuerySnapshot>(
              stream: firebase.collection("Popular_Locations").snapshots(),
              builder: (context, snapshot) {
                return snapshot.hasData? ListView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(15),
                      child: Stack(
                        children: [
                          SizedBox(height: 10,),
                          Image.network("${snapshot.data!.docs[index]["image"]}"
                          ),
                          Align(
                            alignment: Alignment(-0.9,0),
                            child: Text("${snapshot.data!.docs[index]['Name']}",
                              style: TextStyle(
                                  inherit: true,
                                  fontSize: 25,
                                  color: Colors.black,
                                  shadows: [
                                    Shadow( // bottomLeft
                                        offset: Offset(-1, -1),
                                        color: Colors.white
                                    ),
                                    Shadow( // bottomRight
                                        offset: Offset(1, -1),
                                        color: Colors.white
                                    ),
                                    Shadow( // topRight
                                        offset: Offset(1, 1),
                                        color: Colors.white
                                    ),
                                    Shadow( // topLeft
                                        offset: Offset(-1, 1),
                                        color: Colors.white
                                    ),
                                  ]
                              ),
                            ),
                          ),


                      ],),
                    );
                  },
                ):snapshot.hasError? Text("Error Happened"):Center(
                  child: CircularProgressIndicator(

                  ),
                ) ;
              },
            ),
          ],
        ),
      ),
    );
  }
}
