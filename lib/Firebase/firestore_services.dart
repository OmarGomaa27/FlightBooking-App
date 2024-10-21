import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class FireStoreServices extends ChangeNotifier {
  final FirebaseFirestore _fireStore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future addUsers(String? firstname,String? lastname, String? email) async {
    await _fireStore.collection('Users').add({
      'FirstName': firstname,
      'LastName': lastname,
      'Email': email,
      'isAdmin': false,
    });
    log('User added');
  }

  Future<String?> getUserID() async {
    //RETURNS ONLY THE ID OF THE User FROM Users COLLECTION
    String? id;
    User? loggedInUser;
    try {
      final user = _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
      }
      await _fireStore
          .collection("Users")
          .where("Email", isEqualTo: loggedInUser!.email)
          .get()
          .then((QuerySnapshot snapshot) {
        if (snapshot.docs.isNotEmpty) {
          id = snapshot.docs[0].reference.id;
          // isDone = true;
        }
      });
    } catch (e) {
      log('$e');
    }
    return id;
  }

  Future<bool> checkUser(String? email) async {
    //determines if the current user is trainer or trainee
    bool isTrainer = false;
    await _fireStore
        .collection("Users")
        .where("Email", isEqualTo: email)
        .get()
        .then((value) {
      if (value.docs.isNotEmpty) {
        isTrainer = value.docs.first.get("isAdmin");
      }
    });
    return isTrainer;
  }

  Future<Users?> getUserInformation() async {
    //get Information about the current user from user collection
    Users? data;
    User? loggedInUser;
    try {
      final user = _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
        log(loggedInUser.email.toString());
      }
      await _fireStore
          .collection("Users")
          .where("Email", isEqualTo: loggedInUser!.email) //7na b3ml search bel email l2n kolhom fehom email
          .get()
          .then((value) {
        data = Users(
            firstname: value.docs.first.get("FirstName"),
            lastname: value.docs.first.get("LastName"),
            email: value.docs.first.get("Email"),
            iD: value.docs.first.id);
        // log(data!.Email.toString());
        log("data collected");
      });
    } catch (e) {
      log("error in get getUserInformation ");
      log('$e');
    }

    return data;
  }

  Future<void> bookingFlight(String category, String name, String image,
      String description, String calories, String date) async {
    try {
      await _fireStore.collection("Recipes").add({
        "Category": category,
        "Name": name,
        "Image": image,
        "Calories": calories,
        "Description": description
      }).then((value) async {
        // da lw fe 7aga gdeda et3mla add fe el category
        await addNotification(category, date);
      });
      log("Nutrition added to Recipes collection");
    } catch (e) {
      log("error in adding nutrition ");
      log(e.toString());
    }
  }

  Future<void> addNotification(String notification, String date) async {
    try {
      await _fireStore.collection("Notifications").add({
        "Category": "A new recipe has been to $notification category",
        "Date": date
      }).then((value) {
        log("notification added successfully");
      });
    } catch (e) {
      log('$e');
    }
  }

  // Future<List<NotificationsClass>> getNotification() async {
  //   List<NotificationsClass> data = [];
  //
  //   try {
  //     await _fireStore
  //         .collection("Notifications")
  //         .orderBy('Date')
  //         .get()
  //         .then((QuerySnapshot snapshot) {
  //       if (snapshot.docs.isNotEmpty) {
  //         final notification = snapshot.docs.reversed;
  //         for (var element in notification) {
  //           NotificationsClass noti = NotificationsClass(
  //               content: element.get("Category"), date: element.get("Date"));
  //           data.add(noti);
  //         }
  //       }
  //     }).then((value) {
  //       log("got notifications");
  //     });
  //   } catch (e) {
  //     log(e.toString());
  //     log("notification not received");
  //   }
  //   return data;
  // }
// retrive all nutrition
//   Future<List<Nutrition>> getAllNutrition() async {
//     //getting all nutrition
//     List<Nutrition> data = [];
//
//     try {
//       await _fireStore
//           .collection("Recipes")
//           // .where("Category", isEqualTo: category)
//           .get()
//           .then((QuerySnapshot snapshot) {
//         if (snapshot.docs.isNotEmpty) {
//           for (var element in snapshot.docs) {
//             Nutrition nutri = Nutrition(
//               name: element.get("Name"),
//               image: element.get("Image"),
//               description: element.get("Description"),
//               calories: element.get("Calories"),
//               category: element.get("Category"),
//             );
//             data.add(nutri);
//           }
//         }
//       });
//     } catch (e) {
//       log("error in get all nutrition function");
//       log('$e');
//     }
//     return data;
//   }

  Future<void> addFeedBack(String rating, String feedback) async {
    User? loggedInUser;
    try {
      final user = _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
      }
      await _fireStore.collection("FeedBack").add({
        'Rating': rating,
        'FeedBack': feedback,
        'submitter': loggedInUser!.email
      });
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> addPathToDatabase(List list) async {
    //USED WHEN UPLOADING images to firebase and take its url and put it in fire-store
    try {
      User? loggedInUser;
      final user = _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
      }
      await _fireStore
          .collection("Users")
          .where("Email", isEqualTo: loggedInUser!.email)
          .get()
          .then((value) {
        for (var element in value.docs) {
          _fireStore
              .collection("Users")
              .doc(element.id)
              .update({"Image": list[0]});
        }
      });
    } catch (e) {
      log('$e');
    }
  }

  Future<void> changeName(String newName) async {
    try {
      User? loggedInUser;
      final user = _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
      }
      await _fireStore
          .collection("Users")
          .where("Email", isEqualTo: loggedInUser!.email)
          .get()
          .then((value) {
        for (var element in value.docs) {
          _fireStore
              .collection("Users")
              .doc(element.id)
              .update({"Name": newName});
        }
      });
    } catch (e) {
      log('$e');
    }
  }

  Future<bool> changePassword(String email) async {
    //changing password by sending email to change their password
    bool isDone = false;
    try {
      User? loggedInUser;
      //1- check 3la el current user(it's mean logged in user) and put user
      final user = _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
      } else {
        log('User is currently signed out!');
        return false;
      }
      log(email.toString());
      //2- fe function f firebase "sendPasswordResetEmail" de elly mn 5lal7a
      // b ygeeb el email elly byb3t 3leh 2nna n put new password
      // w awl ma el link bytb3t b2ool en massge "password reset link sent"
      await _auth.sendPasswordResetEmail(email: email.trim()).then((value) {
        isDone = true;
      }).catchError((onError) {
        isDone = false;
      });
    } catch (e) {
      log('$e');
    }
    log("change password: $isDone");
    return isDone;
  }
}
