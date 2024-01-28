import 'package:flutter/material.dart';

// Need to be imported from database

class mylistview extends StatefulWidget{

  @override
  State<mylistview> createState() => _mylistviewState();
}

class _mylistviewState extends State<mylistview> {

  List imagelist = [

    'Images/broom.jpg',
    'Images/cheap apple.jpg',
    'Images/dedoderant.png',
    'Images/hat.jpg',
    'Images/japan.png',
    'Images/milk.jpg',
    'Images/not cheap apple.png',
    'Images/nuke.jpg',
    'Images/pancakes.jpg',
    'Images/pet allgator.jpg',
    'Images/tank.jpg'
  ];

  List <String> namelist = [
    'broom',
    'cheap apple',
    'dedoderant',
    'hat',
    'japan',
    'milk',
    'not cheap apple',
    'nuke',
    'pancakes',
    'pet allgator',
    'tank',

  ];

  List price =[
    30,10,40,20,900,45,12,54,76,89,23.75,
  ];

  @override
  Widget build(BuildContext context){

    return ListView.builder(
        itemCount: imagelist.length,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
          leading: Container(
              height:60,
              width: 60,
              child: Image.asset(imagelist[index])),
          title: Text(namelist[index]),
          subtitle: Text('Rs ' +  price[index].toString()),
            trailing: IconButton(
            icon: Icon(Icons.add),
              onPressed: null,
            ),
          );

        },
    );
  }
}