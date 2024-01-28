import 'package:flutter/material.dart';
import 'package:mcproj/mainpage.dart';
import 'mylist.dart';
import 'test.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'mainpage.dart';
import 'signin.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(mysignin());
}




