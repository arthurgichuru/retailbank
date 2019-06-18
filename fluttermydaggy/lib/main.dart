import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyDaggy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: Scaffold(
        body: Center(
          child: RaisedButton(
              onPressed: (){

              },
             textColor: Colors.white,
             padding: EdgeInsets.all(10),
             child: Container(
               decoration: BoxDecoration(
                 gradient: LinearGradient(
                     colors: <Color>
                     [
                       Color(0xFF0D47A1),
                       Color(0xFF1976D2),
                       Color(0xFF42A5F5),
                     ]
                 ),
               ),
               padding: EdgeInsets.all(10),
               child: Text('Daggy', style: TextStyle(color: Colors.black),),
             ),
              )


        ),
      )
    );
  }
}
