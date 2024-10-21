import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

class FireStoreDatabase extends ChangeNotifier {
  final CollectionReference _users =
      FirebaseFirestore.instance.collection('Users');

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<dynamic> login(String email, String password) async {
    try {
      final user = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      notifyListeners();
      return user;
    } catch (e) {
      log('$e' 'in login function');
    }
  }

  Future<dynamic> signUp(String email, String password) async {
    try {
      return _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      log('$e' 'in sign up function');
    }
  }

  Future<bool> checkName(String name) async {
    bool isTaken = false;
    await _users.where('Name', isEqualTo: name).get().then((value) {
      if (value.docs.isNotEmpty) {
        log('NameFound');
        isTaken = true;
      } else {
        log('name not Found');
        isTaken = false;
      }
    });

    return isTaken;
  }

  Future<bool> checkEmail(String email) async {
    bool isTaken = false;
    await _users.where('Email', isEqualTo: email).get().then((value) {
      if (value.docs.isNotEmpty) {
        isTaken = true;
        log("this email is taken");
      } else {
        isTaken = false;
        log("this email is not taken");
      }
    });
    return isTaken;
  }

  Future<dynamic> logout() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    try {
      return auth.signOut();
    } catch (e) {
      log('$e');
    }
  }

  final _bioAuth = LocalAuthentication();
  Future<bool> hasBiometrics() async {
    try {
      bool hasBio = await _bioAuth.canCheckBiometrics;
      return hasBio;
    } catch (e) {
      return false;
    }
  }

  Future<bool> authenticate() async {
    bool isAvailable = await hasBiometrics();
    if (!isAvailable) return false;
    try {
      return await _bioAuth.authenticate(
        localizedReason: 'BioMetric Authentication to access the application',
        options: const AuthenticationOptions(
          biometricOnly: true,
          useErrorDialogs: false,
          sensitiveTransaction: true,
          stickyAuth: false,
        ),
      );
    } catch (e) {
      return false;
    }
  }
}
