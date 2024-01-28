import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:mcproj/mainpage.dart';
import 'package:mcproj/mylist.dart';
import 'package:mcproj/main.dart';
import 'package:flutter/material.dart';


class AuthService{


final FirebaseAuth _auth = FirebaseAuth.instance;


Future signIn(String email, String password) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    // User successfully signed in
    User? user = userCredential.user;
    if (user != null){ return user;}
    else if (user == null){print('User does not exist. Please register first if you are a first time user');
    return null;
    }
  } catch (e) {
    // Error occurred during sign in
    print('Sign in error: $e');
  }
}
// sign in with email and password

  // register

  //sign out



}