import 'package:flutter/material.dart';


class MyDagy extends StatefulWidget{

  _MyDagy createState()=> _MyDagy();
}

class _MyDagy extends State<MyDagy> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Dagy',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dagy'),
        ),
        body: Center(
          child: Text('I am Dougy'),
        ),
      ),

    );
  }
}