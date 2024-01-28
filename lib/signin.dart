import 'package:flutter/material.dart';
import 'mainpage.dart';
import 'services/auth.dart';
import 'services/auth.dart';

final emailcontroller = TextEditingController();
final passcontroller =TextEditingController();
String email1 = '';
String password1 = '';
AuthService myauth1 = new AuthService();
class mysignin extends StatefulWidget {
  const mysignin({Key? key}) : super(key: key);

  @override
  State<mysignin> createState() => _mysigninState();
}

class _mysigninState extends State<mysignin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              emailtxt(),
              passtxt(),
              loginbutton(),
            ],
          ),
        ),
      ),
    );
  }
}

class loginbutton extends StatelessWidget {
  const loginbutton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () async{Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => mainpage()),
    );
      myauth1.signIn(emailcontroller.text, passcontroller.text);
    },
    child: Text('Login'),);
  }
}

class emailtxt extends StatefulWidget {
  const emailtxt({Key? key}) : super(key: key);

  @override
  State<emailtxt> createState() => _emailtxtState();

}

class _emailtxtState extends State<emailtxt> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: emailcontroller,
    decoration: InputDecoration(labelText: 'Email'),
    );
  }
}

class passtxt extends StatefulWidget {
  const passtxt({Key? key}) : super(key: key);

  @override
  State<passtxt> createState() => _passtxtState();
}

class _passtxtState extends State<passtxt> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: passcontroller,
      decoration: InputDecoration(labelText: 'password'),
    );
  }
}

