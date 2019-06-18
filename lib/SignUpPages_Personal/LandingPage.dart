import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget{

  _LandingPage createState()=> _LandingPage();
}

class _LandingPage extends State<LandingPage>{
  @override
  Widget build(BuildContext context) {

    // Create Button
    final createaccountButton = Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Center(
        child: IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                  width: 250.0,
                  height: 40.0,
                  child: new RaisedButton(
                      child: const Text('CREATE ACCOUNT'),
                      elevation: 4.0,
                      splashColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0),),
                      onPressed: () {
                          Navigator.pushNamed(context, '/0_CustomerType');
                      })
              )
            ],
          ),
        ),
      ),
    );


//Log in Button

    final loginButton = new Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Center(
        child: IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 250.0,
                height: 40.0,
                child: new RaisedButton(
                    child: const Text('LOG IN'),
                    elevation: 4.0,
                    splashColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0),),
                    onPressed: () {
                      Navigator.pushNamed(context, '/8_LogInPersonal');
                    }),
              ),
            ],
          ),
        ),
      ),
    );

    //Branding Text

    final descriptionText = new Row(
      mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 250.0,
                  height: 50.0,
                  child: new Text('MOKASH BANK',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight:
                      FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ]
          );


    return MaterialApp(
      title: 'LandingPage',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 80, right: 20, left: 20, bottom: 50),
            child: Column(
              children: <Widget>[
                Flexible(
                  fit: FlexFit.tight,
                     child:descriptionText,
                  flex: 2,
                ),
                Flexible(
                  fit: FlexFit.tight,
                    child: createaccountButton,
                  flex: 0,
                ),
                Flexible(
                  fit: FlexFit.tight,
                    child: loginButton,
                  flex: 0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}