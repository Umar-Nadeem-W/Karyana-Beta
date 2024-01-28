import 'package:flutter/material.dart';
import 'mylist.dart';
import 'test.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


class mainpage extends StatefulWidget {
  const mainpage({super.key});

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  int myindex = 1;

  List <Widget> tabs =[ testfile(), mylistview()];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('Shop')),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: myindex,
            onTap: (index){
              setState(() {
                myindex= index;
              });
            },
            //fixedColor: Colors.blue,
            items: const[
              BottomNavigationBarItem(
                label:'profile',
                icon: Icon(Icons.person),),
              BottomNavigationBarItem(
                label:'Explore',
                icon: Icon(Icons.search),),
              BottomNavigationBarItem(
                label:'Go to cart',
                icon: Icon(Icons.shopping_cart_sharp),),


            ],

          ),
          body: tabs[myindex],
        ),
      ),
      title: 'Main Page',
    );
  }
}